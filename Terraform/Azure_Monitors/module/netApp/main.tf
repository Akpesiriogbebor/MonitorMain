    resource "azurerm_monitor_metric_alert" "Azure-NetApp-LowVolumeSpace" {
          name                = "Azure-NetApp-LowVolumeSpace"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "{{#is_alert}}Volume: {{name.name}} is having free space under 5%Please refer to the following reaction process:https://apptemetry/KnowledgeBase/Article.aspx?id=20711Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook {{/is_alert}}"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"

          criteria {
            metric_namespace = "Microsoft.NetApp"
            metric_name      = "VolumeConsumedSizePercentage"
            aggregation      = "Average"
            operator         = "GreaterThan"
            threshold        = "95"         
         
          }

        /* dynamic_criteria {
                metric_namespace = "Microsoft.NetApp"
                metric_name      = "VolumeConsumedSizePercentage"
                aggregation      = "Average"
                operator         = "GreaterOrLessThan"
                alert_sensitivity        = "Medium"
                evaluation_total_count   = 4
                evaluation_failure_count = 4
        } */

          action {
    
            action_group_id = var.actiongroupid
   

          }
}