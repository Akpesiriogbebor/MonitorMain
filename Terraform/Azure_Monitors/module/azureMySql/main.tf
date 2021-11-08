resource "azurerm_monitor_metric_alert" "Azure-MySQLPaaS-Storage" {
          name                = "Azure-MySQLPaaS-Storage"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MySQL PaaS - Storage{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMySQL/servers"
                metric_name      = "storage_used"
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

resource "azurerm_monitor_metric_alert" "Azure-MySQLPaaS-StoragePercent" {
          name                = "Azure-MySQLPaaS-StoragePercent"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MySQL PaaS - Storage Percent{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"



          dynamic_criteria {
                metric_namespace = "Microsoft.DBforMySQL/servers"
                metric_name      = "storage_percent"
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

resource "azurerm_monitor_metric_alert" "Azure-MySQLPaaS-SecondsBehindMaster" {
          name                = "Azure-MySQLPaaS-SecondsBehindMaster"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MySQL PaaS - Seconds Behind Master{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMySQL/servers"
                metric_name      = "seconds_behind_master"
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

resource "azurerm_monitor_metric_alert" "Azure-MySQLPaaS-MemoryPercent" {
          name                = "Azure-MySQLPaaS-MemoryPercent"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MySQL PaaS - Memory Percent{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

      dynamic_criteria {
                metric_namespace = "Microsoft.DBforMySQL/servers"
                metric_name      = "memory_percent"
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


resource "azurerm_monitor_metric_alert" "Azure-MySQLPaaS-LogStorage" {
          name                = "Azure-MySQLPaaS-LogStorage"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MySQL PaaS - Log Storage{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMySQL/servers"
                metric_name      = "serverlog_storage_usage"
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


resource "azurerm_monitor_metric_alert" "Azure-MySQLPaaS-LogStoragePercent" {
          name                = "Azure-MySQLPaaS-LogStoragePercent"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes          
          description         = "Azure - MySQL PaaS - Log Storage Percent{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMySQL/servers"
                metric_name      = "serverlog_storage_percent"
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

resource "azurerm_monitor_metric_alert" "Azure-MySQLPaaS-CPUpercentage" {
          name                = "Azure-MySQLPaaS-CPUpercentage"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MySQL PaaS - CPU percentage{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMySQL/servers"
                metric_name      = "cpu_percent"
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

resource "azurerm_monitor_metric_alert" "Azure-MySQLPaaS-ConnectionsFailed" {
          name                = "Azure-MySQLPaaS-ConnectionsFailed"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MySQL PaaS - Connections Failed{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMySQL/servers"
                metric_name      = "connections_failed"
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

resource "azurerm_monitor_metric_alert" "Azure-MySQLPaaS-ActiveConnections" {
          name                = "Azure-MySQLPaaS-ActiveConnections"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MySQL PaaS - Active Connections{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"


        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMySQL/servers"
                metric_name      = "active_connections"
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

