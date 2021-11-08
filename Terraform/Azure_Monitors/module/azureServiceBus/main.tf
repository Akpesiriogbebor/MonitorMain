resource "azurerm_monitor_metric_alert" "Azure-ServiceBus-TotalMessages" {
          name                = "Azure-ServiceBus-TotalMessages"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Service Bus - Total Messages{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        criteria {
            metric_namespace = "Microsoft.ServiceBus/namespaces"
            metric_name      = "Messages"
            aggregation      = "Average"
            operator         = "GreaterThanOrEqual"
            threshold        = "50"           
         
        }


        action {
              
              action_group_id = var.actiongroupid
   

        }
}

resource "azurerm_monitor_metric_alert" "Azure-ServiceBus-ScheduledMessages" {
          name                = "Azure-ServiceBus-ScheduledMessages"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Service Bus - Scheduled Messages{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        criteria {
            metric_namespace = "Microsoft.ServiceBus/namespaces"
            metric_name      = "Messages"
            aggregation      = "Average"
            operator         = "GreaterThanOrEqual"
            threshold        = "50"
        }
        
        action {
    
             action_group_id = var.actiongroupid
   

        }
}

resource "azurerm_monitor_metric_alert" "Azure-ServiceBus-IncomingMessages" {
          name                = "Azure-ServiceBus-IncomingMessages"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Service Bus - Incoming Messages{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        dynamic_criteria {
                metric_namespace = "Microsoft.ServiceBus/namespaces"
                metric_name      = "IncomingMessages"
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

resource "azurerm_monitor_metric_alert" "Azure-ServiceBus-DeadLetteredMessages" {
          name                = "Azure-ServiceBus-DeadLetteredMessages"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Service Bus - Dead Lettered Messages{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        criteria {
            metric_namespace = "Microsoft.ServiceBus/namespaces"
            metric_name      = "Messages"
            aggregation      = "Average"
            operator         = "GreaterThanOrEqual"
            threshold        = "50"
        }
        action {
    
             action_group_id = var.actiongroupid
   

        }
}

resource "azurerm_monitor_metric_alert" "Azure-ServiceBus-ActiveMessages" {
          name                = "Azure-ServiceBus-ActiveMessages"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Service Bus - Active Messages{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        criteria {
            metric_namespace = "Microsoft.ServiceBus/namespaces"
            metric_name      = "Messages"
            aggregation      = "Average"
            operator         = "GreaterThanOrEqual"
            threshold        = "50"
        }
        
        action {
    
              action_group_id = var.actiongroupid
   

        }

}
resource "azurerm_monitor_metric_alert" "Azure-ServiceBus-ActiveConnections" {
          name                = "Azure-ServiceBus-ActiveConnections"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Service Bus - Active Connections{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        dynamic_criteria {
                metric_namespace = "Microsoft.ServiceBus/namespaces"
                metric_name      = "ActiveConnections"
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

