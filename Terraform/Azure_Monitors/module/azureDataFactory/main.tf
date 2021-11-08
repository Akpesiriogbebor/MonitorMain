resource "azurerm_monitor_metric_alert" "Azure-DataFactory-AverageTaskPickupDelay" {
          name                = "Azure-DataFactory-AverageTaskPickupDelay"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Data Factory - Average Task Pickup Delay {{name.name}} exceeds the previously estimated average. Please refer to the following reaction process: https://apptemetry/knowledgebase/Article.aspx?id=54321 Alerts generate an AIM ticket, viewable here (search via CI or Alert Name): https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        dynamic_criteria {
                metric_namespace = "Microsoft.DataFactory/factories"
                metric_name      = "integrationruntimeaveragetaskpickupdelay"
                aggregation      = "Average"
                operator         = "GreaterOrLessThan"
                alert_sensitivity        = "Medium"
                evaluation_total_count   = 4
                evaluation_failure_count = 4
        }

          action {
            action_group_id = var.actiongroupid
          }
}

resource "azurerm_monitor_metric_alert" "Azure-DataFactory-FailedRuns" {
          name                = "Azure-DataFactory-FailedRuns"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Data Factory - Failed Runs {{name.name}} exceeds the previously estimated average. Please refer to the following reaction process: https://apptemetry/knowledgebase/Article.aspx?id=54321 Alerts generate an AIM ticket, viewable here (search via CI or Alert Name): https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        dynamic_criteria {
                metric_namespace = "Microsoft.DataFactory/factories"
                metric_name      = "activityfailedruns"
                aggregation      = "Average"
                operator         = "GreaterOrLessThan"
                alert_sensitivity        = "Medium"
                evaluation_total_count   = 4
                evaluation_failure_count = 4
        }


          action {
             action_group_id = var.actiongroupid
   

          }
}


    
resource "azurerm_monitor_metric_alert" "Azure-DataFactory-PipelineFailedRuns" {
          name                = "Azure-DataFactory-PipelineFailedRuns"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Data Factory - Pipeline Failed Runs {{name.name}} exceeds the previously estimated average. Please refer to the following reaction process: https://apptemetry/knowledgebase/Article.aspx?id=54321 Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        dynamic_criteria {
                metric_namespace = "Microsoft.DataFactory/factories"
                metric_name      = "pipelinefailedruns"
                aggregation      = "Average"
                operator         = "GreaterOrLessThan"
                alert_sensitivity        = "Medium"
                evaluation_total_count   = 4
                evaluation_failure_count = 4
        }
          


        action {

             action_group_id = var.actiongroupid   

        }
}