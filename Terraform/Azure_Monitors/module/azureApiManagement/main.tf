resource "azurerm_monitor_metric_alert" "Azure-APIManagement-FailedRequests" {
          name                = "Azure-APIManagement-FailedRequests"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - API Management - Failed Requests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        dynamic_criteria {
                metric_namespace = "Microsoft.ApiManagement/service"
                metric_name      = "failedrequests"
                aggregation      = "Total"
                operator         = "GreaterOrLessThan"
                alert_sensitivity        = "Medium"
                evaluation_total_count   = 4
                evaluation_failure_count = 4
        }


          action {
            action_group_id = var.actiongroupid
          }
}


resource "azurerm_monitor_metric_alert" "Azure-APIManagement-OverallDurationOfGatewayRequests" {
          name                = "Azure-APIManagement-OverallDurationOfGatewayRequests"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - API Management - Overall Duration Of Gateway Requests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        dynamic_criteria {
                metric_namespace = "Microsoft.ApiManagement/service"
                metric_name      = "duration"
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


resource "azurerm_monitor_metric_alert" "Azure-APIManagement-SuccessfulRequests" {
          name                = "Azure-APIManagement-SuccessfulRequests"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - API Management - Successful Requests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        dynamic_criteria {
                metric_namespace = "Microsoft.ApiManagement/service"
                metric_name      = "successfulrequests"
                aggregation      = "Total"
                operator         = "GreaterOrLessThan"
                alert_sensitivity        = "Medium"
                evaluation_total_count   = 4
                evaluation_failure_count = 4
        }


          action {
              action_group_id = var.actiongroupid
          }
}

resource "azurerm_monitor_metric_alert" "Azure-APIManagement-UnauthorizedRequests" {
          name                = "Azure-APIManagement-UnauthorizedRequests"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - API Management - Unauthorized Requests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"


        dynamic_criteria {
                metric_namespace = "Microsoft.ApiManagement/service"
                metric_name      = "unauthorizedrequests"
                aggregation      = "Total"
                operator         = "GreaterOrLessThan"
                alert_sensitivity        = "Medium"
                evaluation_total_count   = 4
                evaluation_failure_count = 4
        }


          action {
          
             action_group_id = var.actiongroupid
           }
}

