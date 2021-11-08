resource "azurerm_monitor_metric_alert" "Azure-AppServices-AverageCPUTime" {
      name                = "Azure-AppServices-AverageCPUTime"
      resource_group_name = var.resource_group_name
      scopes              = var.scopes
      description         = "Azure - App Services - Average CPU Time{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
      frequency        =  "PT5M"
      severity         =  4
      window_size      =  "PT5M"

      dynamic_criteria {
        metric_namespace = "Microsoft.Web/sites"
        metric_name      = "cputime"
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


resource "azurerm_monitor_metric_alert" "Azure-AppServices-AverageResponseTime" {
      name                = "Azure-AppServices-AverageResponseTime"
      resource_group_name = var.resource_group_name
      scopes              = var.scopes
      description         = "Azure - App Services - Average Response Time {{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
      frequency        =  "PT5M"
      severity         =  4
      window_size      =  "PT5M"

      dynamic_criteria {
            metric_namespace = "Microsoft.Web/sites"
            metric_name      = "cputime"
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


    
resource "azurerm_monitor_metric_alert" "Azure-AppServices-HTTP4XXerrors" {
      name                = "Azure-AppServices-HTTP4XXerrors"
      resource_group_name = var.resource_group_name
      scopes              = var.scopes
      description         = "Azure - App Services - HTTP 4XX errors{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321 Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
      frequency        =  "PT5M"
      severity         =  4
      window_size      =  "PT5M"

      dynamic_criteria {
            metric_namespace = "Microsoft.Web/sites"
            metric_name      = "cputime"
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


resource "azurerm_monitor_metric_alert" "Azure-AppServices-HTTP5XXerrors" {
      name                = "Azure-AppServices-HTTP5XXerrors"
      resource_group_name = var.resource_group_name
      scopes              = var.scopes
      description         = "Azure - App Services - HTTP 5XX errors {{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321 Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
      frequency        =  "PT5M"
      severity         =  4
      window_size      =  "PT5M"

      dynamic_criteria {
            metric_namespace = "Microsoft.Web/sites"
            metric_name      = "cputime"
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


    
    resource "azurerm_monitor_metric_alert" "Azure-AppServices-Responsetime" {
          name                = "Azure-AppServices-Responsetime"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - App - Service - Response time {{name.name}}Azure Server: {{name.name}}, IP: {{name.ip}} - Azure App Service response time is greater than 5 sec Please refer to the following reaction process:https://apptemetry/knowledgebase/article.aspx?id=17294Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

         dynamic_criteria {
                metric_namespace = "Microsoft.Web/sites"
                metric_name      = "cputime"
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
    
resource "azurerm_monitor_metric_alert" "Azure-AppServices-TotalRequests" {
      name                = "Azure-AppServices-TotalRequests"
      resource_group_name = var.resource_group_name
      scopes              = var.scopes
      description         = "Azure - App Services - Total Requests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
      frequency        =  "PT5M"
      severity         =  4
      window_size      =  "PT5M"

      dynamic_criteria {
            metric_namespace = "Microsoft.Web/sites"
            metric_name      = "cputime"
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

resource "azurerm_monitor_metric_alert" "Azure-AppServices-CPUTime" {
      name                = "Azure-AppServices-CPUTime"
      resource_group_name = var.resource_group_name
      scopes              = var.scopes
      description         = "Azure - App Service - CPU Time {{name.name}}Azure App Service CPU Time for instance : {{name.name}} is {{value}}Please refer to the following reaction process:https://apptemetry/knowledgebase/article.aspx?id=17301Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
      frequency        =  "PT1H"
      severity         =  4
      window_size      =  "PT1H"

      dynamic_criteria {
            metric_namespace = "Microsoft.Web/sites"
            metric_name      = "cputime"
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