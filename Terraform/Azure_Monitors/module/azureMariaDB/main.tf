resource "azurerm_monitor_metric_alert" "Azure-MariaDBPaaS-Storage" {
          name                = "Azure-MariaDBPaaS-Storage"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MariaDB PaaS - Storage{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"

        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMariaDB/servers"
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

resource "azurerm_monitor_metric_alert" "Azure-MariaDBPaaS-StoragePercent" {
          name                = "Azure-MariaDBPaaS-StoragePercent"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MariaDB PaaS - Storage Percent{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"


        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMariaDB/servers"
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

resource "azurerm_monitor_metric_alert" "Azure-MariaDBPaaS-SecondsBehindMaster" {
          name                = "Azure-MariaDBPaaS-SecondsBehindMaster"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MariaDB PaaS - Seconds Behind Master{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"


        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMariaDB/servers"
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

resource "azurerm_monitor_metric_alert" "Azure-MariaDBPaaS-MemoryPercent" {
          name                = "Azure-MariaDBPaaS-MemoryPercent"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MariaDB PaaS - Memory Percent{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"


        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMariaDB/servers"
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

resource "azurerm_monitor_metric_alert" "Azure-MariaDBPaaS-LogStorage" {
          name                = "Azure-MariaDBPaaS-LogStorage"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MariaDB PaaS - Log Storage{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"


        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMariaDB/servers"
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

resource "azurerm_monitor_metric_alert" "Azure-MariaDBPaaS-LogStoragePercent" {
          name                = "Azure-MariaDBPaaS-LogStoragePercent"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MariaDB PaaS - Log Storage Percent{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"


        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMariaDB/servers"
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

resource "azurerm_monitor_metric_alert" "Azure-MariaDBPaaS-CPUpercentage" {
          name                = "Azure-MariaDBPaaS-CPUpercentage"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MariaDB PaaS - CPU percentage{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"


        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMariaDB/servers"
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

resource "azurerm_monitor_metric_alert" "Azure-MariaDBPaaS-ConnectionsFailed" {
          name                = "Azure-MariaDBPaaS-ConnectionsFailed"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MariaDB PaaS - Connections Failed{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"



        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMariaDB/servers"
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

resource "azurerm_monitor_metric_alert" "Azure-MariaDBPaaS-ActiveConnections" {
          name                = "Azure-MariaDBPaaS-ActiveConnections"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - MariaDB PaaS - Active Connections{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"


        dynamic_criteria {
                metric_namespace = "Microsoft.DBforMariaDB/servers"
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

