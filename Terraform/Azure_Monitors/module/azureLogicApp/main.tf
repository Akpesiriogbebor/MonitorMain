resource "azurerm_monitor_metric_alert" "Azure-LogicApps-TriggersSucceeded" {
          name                = "Azure-LogicApps-TriggersSucceeded"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Triggers Succeeded{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

          dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "TriggersSucceeded"
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


    
resource "azurerm_monitor_metric_alert" "Azure-LogicApps-TriggersFailed" {
          name                = "Azure-LogicApps-TriggersFailed"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Triggers Failed{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


          dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "TriggersFailed"
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

resource "azurerm_monitor_metric_alert" "Azure-LogicApps-TriggerThrottledEvents" {
          name                = "Azure-LogicApps-TriggerThrottledEvents"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Trigger Throttled Events{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


          dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "TriggerThrottledEvents"
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

resource "azurerm_monitor_metric_alert" "Azure-LogicApps-TriggerLatency" {
          name                = "Azure-LogicApps-TriggerLatency"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Trigger Latency{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

          dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "TriggerLatency"
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


    resource "azurerm_monitor_metric_alert" "Azure-LogicApps-ThrottledEvents" {
          name                = "Azure-LogicApps-ThrottledEvents"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Throttled Events{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

        dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "ActionThrottledEvents"
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

    resource "azurerm_monitor_metric_alert" "Azure-LogicApps-SucceededActions" {
          name                = "Azure-LogicApps-SucceededActions"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Succeeded Actions{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


        dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "ActionsSucceeded"
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


    resource "azurerm_monitor_metric_alert" "Azure-LogicApps-SkippedActions" {
          name                = "Azure-LogicApps-SkippedActions"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Skipped Actions{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

        dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "ActionsSkipped"
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

    resource "azurerm_monitor_metric_alert" "Azure-LogicApps-RunsSucceeded" {
          name                = "Azure-LogicApps-RunsSucceeded"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Runs Succeeded{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

        dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "RunsSucceeded"
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

    resource "azurerm_monitor_metric_alert" "Azure-LogicApps-RunsFailed" {
          name                = "Azure-LogicApps-RunsFailed"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes  #Scope to one resourse
          description         = "Azure - Logic Apps - Runs Failed{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


        dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "RunsFailed"
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

resource "azurerm_monitor_metric_alert" "Azure-LogicApps-RunsCompleted" {
          name                = "Azure-LogicApps-RunsCompleted"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Runs Completed{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


        dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "RunsCompleted"
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

resource "azurerm_monitor_metric_alert" "Azure-LogicApps-RunThrottledEvents" {
          name                = "Azure-LogicApps-RunThrottledEvents"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Run Throttled Events{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


        dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "RunStartThrottledEvents"
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

    resource "azurerm_monitor_metric_alert" "Azure-LogicApps-RunLatency" {
          name                = "Azure-LogicApps-RunLatency"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Run Latency{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


        dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "RunLatency"
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

    resource "azurerm_monitor_metric_alert" "Azure-LogicApps-RunFailurePercentage" {
          name                = "Azure-LogicApps-RunFailurePercentage"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Run Failure Percentage{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


        dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "RunFailurePercentage"
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

    resource "azurerm_monitor_metric_alert" "Azure-LogicApps-FailedActions" {
          name                = "Azure-LogicApps-FailedActions"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Failed Actions{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


        dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "ActionsFailed"
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

    resource "azurerm_monitor_metric_alert" "Azure-LogicApps-ActionSuccessLatency" {
          name                = "Azure-LogicApps-ActionSuccessLatency"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Action Success Latency{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


          
        dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "ActionSuccessLatency"
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

    resource "azurerm_monitor_metric_alert" "Azure-LogicApps-ActionLatency" {
          name                = "Azure-LogicApps-ActionLatency"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Logic Apps - Action Latency{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


          dynamic_criteria {
                metric_namespace = "Microsoft.Logic/workflows"
                metric_name      = "ActionLatency"
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

