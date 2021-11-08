resource "azurerm_monitor_scheduled_query_rules_alert" "AzureMySQLPaaSStorage" {
  name                = "Azure-MySQLPaaS-Storage"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-MySQLPaaS-Storage"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-MySQLPaaS-Storage{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "storage_used"
| where ResourceProvider contains "Microsoft.DBforMySQL/servers"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 50
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-MySQLPaaS-StoragePercent" {
  name                = "Azure-MySQLPaaS-StoragePercent"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-MySQLPaaS-StoragePercent"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-MySQLPaaS-StoragePercent{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "storage_percent"
| where ResourceProvider contains "Microsoft.DBforMySQL/servers"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 50
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-MySQLPaaS-SecondsBehindMaster" {
  name                = "Azure-MySQLPaaS-SecondsBehindMaster"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-MySQLPaaS-SecondsBehindMaster"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-MySQLPaaS-SecondsBehindMaster{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "seconds_behind_master"
| where ResourceProvider contains "Microsoft.DBforMySQL/servers"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 50
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-MySQLPaaS-MemoryPercent" {
  name                = "Azure-MySQLPaaS-MemoryPercent"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-MySQLPaaS-MemoryPercent"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-MySQLPaaS-MemoryPercent{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "memory_percent"
| where ResourceProvider contains "Microsoft.DBforMySQL/servers"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 50
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-MySQLPaaS-LogStorage" {
  name                = "Azure-MySQLPaaS-LogStorage"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-MySQLPaaS-LogStorage"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-MySQLPaaS-LogStorage{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "serverlog_storage_usage"
| where ResourceProvider contains "Microsoft.DBforMySQL/servers"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 50
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-MySQLPaaS-LogStoragePercent" {
  name                = "Azure-MySQLPaaS-LogStoragePercent"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-MySQLPaaS-LogStoragePercent"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-MySQLPaaS-LogStoragePercent{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "serverlog_storage_percent"
| where ResourceProvider contains "Microsoft.DBforMySQL/servers"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 50
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-MySQLPaaS-CPUpercentage" {
  name                = "Azure-MySQLPaaS-CPUpercentage"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-MySQLPaaS-CPUpercentage"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-MySQLPaaS-CPUpercentage{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "cpu_percent"
| where ResourceProvider contains "Microsoft.DBforMySQL/servers"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 50
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-MySQLPaaS-ConnectionsFailed" {
  name                = "Azure-MySQLPaaS-ConnectionsFailed"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-MySQLPaaS-ConnectionsFailed"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-MySQLPaaS-ConnectionsFailed{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "connections_failed"
| where ResourceProvider contains "Microsoft.DBforMySQL/servers"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 50
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-MySQLPaaS-ActiveConnections" {
  name                = "Azure-MySQLPaaS-ActiveConnections"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-MySQLPaaS-ActiveConnections"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-MySQLPaaS-ActiveConnections{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "active_connections"
| where ResourceProvider contains "Microsoft.DBforMySQL/servers"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 50
  }
}