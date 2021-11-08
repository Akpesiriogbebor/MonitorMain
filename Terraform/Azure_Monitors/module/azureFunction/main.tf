resource "azurerm_monitor_metric_alert" "Azure-Functions-HTTP5XXerrors" {
          name                = "Azure-Functions-HTTP5XXerrors"
          resource_group_name =  var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Functions - HTTP 5XX errors{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

          dynamic_criteria {
                metric_namespace = "Microsoft.Web/sites"
                metric_name      = "http5xx"
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

resource "azurerm_monitor_metric_alert" "Azure-Functions-HTTP4XXerrors" {
          name                = "Azure-Functions-HTTP4XXerrors"
          resource_group_name =  var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Functions - HTTP 4XX errors{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        dynamic_criteria {
                metric_namespace = "Microsoft.Web/sites"
                metric_name      = "http4xx"
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

resource "azurerm_monitor_metric_alert" "Azure-Functions-AverageReponseTime" {
          name                = "Azure-Functions-AverageReponseTime"
          resource_group_name =  var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Functions - Average Reponse Time{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

          dynamic_criteria {
                metric_namespace = "Microsoft.Web/sites"
                metric_name      = "averageresponsetime"
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