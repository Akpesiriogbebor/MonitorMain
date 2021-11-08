resource "azurerm_monitor_metric_alert" "Azure-SQL-LowStorageSpace" {
          name                = "Azure-SQL-LowStorageSpace"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - SQL - Low Storage Space: {{name.name}}DB: {{name.name}} - IP: {{name.ip}} - Free space under 90%Please refer to the following reaction process:https://apptemetry/knowledgebase/ArticleEdit.aspx?id=18412Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

     dynamic_criteria {
                metric_namespace = "Microsoft.Sql/servers/databases"
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

resource "azurerm_monitor_metric_alert" "Azure-SQL-DatabaseSQLprocessmemory" {
          name                = "Azure-SQL-DatabaseSQLprocessmemory"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - SQL - Database SQL process memory {{name.name}} exceeds the previously estimated average. Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321 Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

     dynamic_criteria {
                metric_namespace = "Microsoft.Sql/servers/databases"
                metric_name      = "sqlserver_process_memory_percent"
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

resource "azurerm_monitor_metric_alert" "Azure-SQL-DatabaseCPUpercentage" {
          name                = "Azure-SQL-DatabaseCPUpercentage"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - SQL - Database CPU percentage{{name.name}} exceeds the previously estimated average.Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT15M"
          severity         =  4
          window_size      =  "PT15M"

          criteria {
            metric_namespace = "Microsoft.Sql/servers/databases"
            metric_name      = "cpu_percent"
            aggregation      = "Average"
            operator         = "GreaterThan"
            threshold        = "95"

            
         
          }


          action {
    action_group_id = var.actiongroupid
   

     }
}

resource "azurerm_monitor_metric_alert" "Azure-SQL-DatabaseConnectionsFailed" {
          name                = "Azure-SQL-DatabaseConnectionsFailed"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - SQL - Database Connections Failed{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

     dynamic_criteria {
                metric_namespace = "Microsoft.Sql/servers/databases"
                metric_name      = "connection_failed"
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

resource "azurerm_monitor_metric_alert" "Azure-SQL-AvgCPUPercent" {
          name                = "Azure-SQL-AvgCPUPercent"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - SQL - Avg CPU Percent: {{name.name}}DB: {{name.name}} - IP: {{name.ip}} - Average CPU over 95% Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18413Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
          frequency        =  "PT30M"
          severity         =  4
          window_size      =  "PT30M"

    dynamic_criteria {
                metric_namespace = "Microsoft.Sql/servers/databases"
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

