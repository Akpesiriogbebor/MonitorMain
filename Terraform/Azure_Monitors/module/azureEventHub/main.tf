resource "azurerm_monitor_metric_alert" "Azure-EventHubNamespaces-Status" {
          name                = "Azure-EventHubNamespaces-Status"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - EventHub Namespaces - Status{{name.name}} is down.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18738Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

          criteria {
                metric_namespace = "Microsoft.EventHub/namespaces"
                metric_name      = "ActiveConnections"
                aggregation      = "Minimum"
                operator         = "GreaterThan"
                threshold        = 50
                skip_metric_validation = "true"
          }


          action {
            action_group_id = var.actiongroupid
          }
}