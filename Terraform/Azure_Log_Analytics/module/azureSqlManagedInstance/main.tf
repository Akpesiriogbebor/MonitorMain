resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-ManagedInstance-DiskSpaceLow-8192GiB" {
  name                = "Azure-SQL-ManagedInstance-DiskSpaceLow-8192GiB"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-ManagedInstance-DiskSpaceLow-8192GiB"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Managed Instance - Disk Space Low (8192GiB) {{name.name}}Azure Server: {{name.name}}, IP: {{name.ip}} - Available disk space is under 10%Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18323Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "storage_space_used_mb"
| where ResourceProvider contains "Microsoft.Sql/managedInstances"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 7372000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-ManagedInstance-DiskSpaceLow-4096GiB" {
  name                = "Azure-SQL-ManagedInstance-DiskSpaceLow-4096GiB"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-ManagedInstance-DiskSpaceLow-4096GiB"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Managed Instance - Disk Space Low (4096GiB) {{name.name}}Azure Server: {{name.name}}, IP: {{name.ip}} - Available disk space is under 10%Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18323Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "storage_space_used_mb"
| where ResourceProvider contains "Microsoft.Sql/managedInstances"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 3686000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-ManagedInstance-DiskSpaceLow-2048GiB" {
  name                = "Azure-SQL-ManagedInstance-DiskSpaceLow-2048GiB"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-ManagedInstance-DiskSpaceLow-2048GiB"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Managed Instance - Disk Space Low (2048GiB) {{name.name}}Azure Server: {{name.name}}, IP: {{name.ip}} - Available disk space is under 10%Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18323Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "storage_space_used_mb"
| where ResourceProvider contains "Microsoft.Sql/managedInstances"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1843000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-ManagedInstance-DiskSpaceLow-1024GiB" {
  name                = "Azure-SQL-ManagedInstance-DiskSpaceLow-1024GiB"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-ManagedInstance-DiskSpaceLow-1024GiB"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Managed Instance - Disk Space Low (1024GiB) {{name.name}}Azure Server: {{name.name}}, IP: {{name.ip}} - Available disk space is under 10%Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18323Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "storage_space_used_mb"
| where ResourceProvider contains "Microsoft.Sql/managedInstances"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 921000
  }
}

/*resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-ManagedInstance-DatabaseStatus" {
  name                = "Azure-SQL-ManagedInstance-DatabaseStatus"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-ManagedInstance-DatabaseStatus"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Managed Instance - Database StatusAzure Server: {{name.name}}, IP: {{name.ip}} - SQL Database managed instance is down per Azure metricPlease refer to the following reaction process:https://apptemetry/knowledgebase/article.aspx?id=17987Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "status"
| where ResourceProvider contains "Microsoft.Sql/managedInstances"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 1
  time_window     = 1
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 0
  }
}*/

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-ManagedInstance-AvgCPUPercent" {
  name                = "Azure-SQL-ManagedInstance-AvgCPUPercent"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-ManagedInstance-AvgCPUPercent"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Managed Instance - Avg CPU PercentAzure SQL MI : {{name.name}}, IP: {{name.ip}} - Azure SQL Managed instance Average CPU is over 95% over 5minPlease refer to the following reaction process:https://apptemetry/knowledgebase/article.aspx?id=18007Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "avg_cpu_percent"
| where ResourceProvider contains "Microsoft.Sql/managedInstances"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 95
  }
}