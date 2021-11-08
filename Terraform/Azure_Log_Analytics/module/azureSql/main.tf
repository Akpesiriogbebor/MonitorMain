resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-LowStorageSpace" {
  name                = "Azure-SQL-LowStorageSpace"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-LowStorageSpace"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Low Storage Space: {{name.name}}DB: {{name.name}} - IP: {{name.ip}} - Free space under 90%Please refer to the following reaction process:https://apptemetry/knowledgebase/ArticleEdit.aspx?id=18412Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "storage_percent"
| where ResourceProvider contains "Microsoft.Sql/servers/databases"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 90
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-DTUConsumption" {
  name                = "Azure-SQL-DTUConsumption"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-DTUConsumption"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "{{#is_alert}}{{name.name}} DTU consumption percent is above 90% avg over 15 minsPlease refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18413Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook{{/is_alert}}"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "dtu_consumption_percent"
| where ResourceProvider contains "Microsoft.Sql/servers/databases"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 90
  }
}

/*resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-DatabaseStatus" {
  name                = "Azure-SQL-DatabaseStatus"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-DatabaseStatus"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Database StatusAzure Server: {{name.name}}, IP: {{name.ip}} - SQL Database is down per Azure metricPlease refer to the following reaction process:https://apptemetry/knowledgebase/article.aspx?id=17987Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "status"
| where ResourceProvider contains "Microsoft.Sql/servers/databases"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-DatabaseSQLprocessmemory" {
  name                = "Azure-SQL-DatabaseSQLprocessmemory"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-DatabaseSQLprocessmemory"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Database SQL process memory {{name.name}} exceeds the previously estimated average. Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321 Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "sqlserver_process_memory_percent"
| where ResourceProvider contains "Microsoft.Sql/servers/databases"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-DatabaseCPUpercentage" {
  name                = "Azure-SQL-DatabaseCPUpercentage"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-DatabaseCPUpercentage"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Database CPU percentage{{name.name}} exceeds the previously estimated average.Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "cpu_percent"
| where ResourceProvider contains "Microsoft.Sql/servers/databases"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 15
  time_window     = 15
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 95
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-DatabaseConnectionsFailed" {
  name                = "Azure-SQL-DatabaseConnectionsFailed"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-DatabaseConnectionsFailed"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Database Connections Failed{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "connection_failed"
| where ResourceProvider contains "Microsoft.Sql/servers/databases"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-SQL-AvgCPUPercent" {
  name                = "Azure-SQL-AvgCPUPercent"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-SQL-AvgCPUPercent"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - SQL - Avg CPU Percent: {{name.name}}DB: {{name.name}} - IP: {{name.ip}} - Average CPU over 95% Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18413Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "cpu_percent"
| where ResourceProvider contains "Microsoft.Sql/servers/databases"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 30
  time_window     = 30
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 95
  }
}

