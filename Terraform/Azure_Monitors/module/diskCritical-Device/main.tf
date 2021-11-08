provider "azurerm" {

  subscription_id ="1adf80ff-67ea-4ac7-91eb-3a328416d9b7"
  # Configuration options
  features{}
} 

resource "azurerm_monitor_action_group" "action" {
  name                = "test"
  resource_group_name = var.resource_group
  short_name          = "exampleact"

  webhook_receiver {
    name        = "callmyapi"
    service_uri = "http://example.com/alert"
  }

}

resource "azurerm_monitor_metric_alert" "DiskSpaceCritical-Device-device-name"{
          name                = "DiskSpaceCritical-Device-device-name"
          resource_group_name = var.resource_group
          scopes              = var.scopes
          description         = "Disk Space CriticalSee: https://apptemetry/knowledgebase/Article.aspx?id=10273@webhook-aimWebhook"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

          criteria {
            metric_namespace = "Microsoft.ClassicStorage/storageAccounts"
            metric_name      = "filesharequota"
            aggregation      = "Minimum"
            operator         = "GreaterThan"
            threshold        = "0.95"

            
         
          }


          action {
    action_group_id = azurerm_monitor_action_group.action.id

     }
}