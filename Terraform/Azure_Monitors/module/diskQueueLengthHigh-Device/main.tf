provider "azurerm" {

  subscription_id ="1adf80ff-67ea-4ac7-91eb-3a328416d9b7"
  # Configuration options
  features{}
} 

resource "azurerm_monitor_action_group" "action" {
  name                = "AGM2"
  resource_group_name = var.resource_group
  short_name          = "exampleact"

  webhook_receiver {
    name        = "callmyapi"
    service_uri = "http://example.com/alert"
  }

}

resource "azurerm_monitor_metric_alert" "DiskQueueLengthHigh-Device-device-name" {
          name                = "DiskQueueLengthHigh-Device-device-name"
          resource_group_name = var.resource_group
          scopes              = var.scopes
          description         = "Disk Queue Length HighSee: https://apptemetry/KnowledgeBase/Article.aspx?id=10295@webhook-aimWebhook"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

          criteria {
            metric_namespace = "Microsoft.Storage/storageAccounts"
            metric_name      = "filesharequota"
            aggregation      = "Minimum"
            operator         = "GreaterThan"
            threshold        = "10"

            
         
          }


          action {
            action_group_id = azurerm_monitor_action_group.action.id
   

     }
}