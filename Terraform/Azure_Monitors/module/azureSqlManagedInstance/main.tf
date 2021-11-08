resource "azurerm_monitor_metric_alert" "Azure-SQL-ManagedInstance-DiskSpaceLow-8192GiB" {
          name                = "Azure-SQL-ManagedInstance-DiskSpaceLow(8192GiB)"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - SQL - Managed Instance - Disk Space Low (8192GiB) {{name.name}}Azure Server: {{name.name}}, IP: {{name.ip}} - Available disk space is under 10%Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18323Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"

          criteria {
            metric_namespace = "Microsoft.Sql/managedInstances"
            metric_name      = "storage_space_used_mb"
            aggregation      = "Average"
            operator         = "GreaterThan"
            threshold        = "7372000"           
         
          }


          action {
    action_group_id = var.actiongroupid
   

     }
}

resource "azurerm_monitor_metric_alert" "Azure-SQL-ManagedInstance-DiskSpaceLow-4096GiB" {
          name                = "Azure-SQL-ManagedInstance-DiskSpaceLow(4096GiB)"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - SQL - Managed Instance - Disk Space Low (4096GiB) {{name.name}}Azure Server: {{name.name}}, IP: {{name.ip}} - Available disk space is under 10%Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18323Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"

          criteria {
            metric_namespace = "Microsoft.Sql/managedInstances"
            metric_name      = "storage_space_used_mb"
            aggregation      = "Average"
            operator         = "GreaterThan"
            threshold        = "3686000"

            
         
          }


          action {
        
              action_group_id = var.actiongroupid
   

          }
}

resource "azurerm_monitor_metric_alert" "Azure-SQL-ManagedInstance-DiskSpaceLow-2048GiB" {
          name                = "Azure-SQL-ManagedInstance-DiskSpaceLow(2048GiB)"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - SQL - Managed Instance - Disk Space Low (2048GiB) {{name.name}}Azure Server: {{name.name}}, IP: {{name.ip}} - Available disk space is under 10%Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18323Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"

          criteria {
            metric_namespace = "Microsoft.Sql/managedInstances"
            metric_name      = "storage_space_used_mb"
            aggregation      = "Average"
            operator         = "GreaterThan"
            threshold        = "1843000"

            
         
          }


          action {
    action_group_id = var.actiongroupid
   

     }
}

resource "azurerm_monitor_metric_alert" "Azure-SQL-ManagedInstance-DiskSpaceLow-1024GiB" {
          name                = "Azure-SQL-ManagedInstance-DiskSpaceLow(1024GiB)"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - SQL - Managed Instance - Disk Space Low (1024GiB) {{name.name}}Azure Server: {{name.name}}, IP: {{name.ip}} - Available disk space is under 10%Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18323Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
          frequency        =  "PT1H"
          severity         =  4
          window_size      =  "PT1H"

          criteria {
            metric_namespace = "Microsoft.Sql/managedInstances"
            metric_name      = "storage_space_used_mb"
            aggregation      = "Average"
            operator         = "GreaterThan"
            threshold        = "921000"

            
         
          }


          action {
    action_group_id = var.actiongroupid
   

     }
}

resource "azurerm_monitor_metric_alert" "Azure-SQL-ManagedInstance-AvgCPUPercent" {
          name                = "Azure-SQL-ManagedInstance-AvgCPUPercent"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - SQL - Managed Instance - Avg CPU PercentAzure SQL MI : {{name.name}}, IP: {{name.ip}} - Azure SQL Managed instance Average CPU is over 95% over 5minPlease refer to the following reaction process:https://apptemetry/knowledgebase/article.aspx?id=18007Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

          criteria {
            metric_namespace = "Microsoft.Sql/managedInstances"
            metric_name      = "avg_cpu_percent"
            aggregation      = "Average"
            operator         = "GreaterThan"
            threshold        = "95"

            
         
          }


          action {
    action_group_id = var.actiongroupid
   

     }
}


