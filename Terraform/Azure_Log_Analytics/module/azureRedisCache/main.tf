resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-RedisCache-TotalKeys" {
  name                = "Azure-RedisCache-TotalKeys"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-RedisCache-TotalKeys"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-RedisCache-TotalKeys{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "totalkeys"
| where ResourceProvider contains "Microsoft.Cache/redis"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-RedisCache-SetCommands" {
  name                = "Azure-RedisCache-SetCommands"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-RedisCache-SetCommands"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-RedisCache-SetCommands{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "setcommands"
| where ResourceProvider contains "Microsoft.Cache/redis"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-RedisCache-ProcessorTime-percent" {
  name                = "Azure-RedisCache-ProcessorTime-percent"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-RedisCache-ProcessorTime-percent"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-RedisCache-ProcessorTime-percent{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "percentprocessortime"
| where ResourceProvider contains "Microsoft.Cache/redis"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-RedisCache-GetCommands" {
  name                = "Azure-RedisCache-GetCommands"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-RedisCache-GetCommands"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-RedisCache-GetCommands{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "getcommands"
| where ResourceProvider contains "Microsoft.Cache/redis"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-RedisCache-ExpiredKeys" {
  name                = "Azure-RedisCache-ExpiredKeys"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-RedisCache-ExpiredKeys"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-RedisCache-ExpiredKeys{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "expiredkeys"
| where ResourceProvider contains "Microsoft.Cache/redis"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-RedisCache-EvictedKeys" {
  name                = "Azure-RedisCache-EvictedKeys"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-RedisCache-EvictedKeys"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-RedisCache-EvictedKeys{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "evictedkeys"
| where ResourceProvider contains "Microsoft.Cache/redis"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-RedisCache-CacheMisses" {
  name                = "Azure-RedisCache-CacheMisses"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-RedisCache-CacheMisses"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-RedisCache-CacheMisses{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "cachemisses"
| where ResourceProvider contains "Microsoft.Cache/redis"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-RedisCache-CacheHits" {
  name                = "Azure-RedisCache-CacheHits"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-RedisCache-CacheHits"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-RedisCache-CacheHits{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "cachehits"
| where ResourceProvider contains "Microsoft.Cache/redis"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}