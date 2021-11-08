resource "azurerm_monitor_scheduled_query_rules_alert" "FailedP2Sconnections" {
  name                = "Failed P2S connections"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Failed P2S connections in the last 1 hours"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Summarize IngestionVolumeMB"
  enabled         = true
  query           = <<-QUERY
AzureDiagnostics 
| where TimeGenerated > ago(1mins)
| where Category == "P2SDiagnosticLog" and Message has "Connection failed"
| project TimeGenerated, Resource ,Message
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "InboundbytesdroppedDDoS" {
  name                = "Inbound bytes dropped DDoS"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Maximum Inbound bytes dropped DDoS "
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Summarize IngestionVolumeMB"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "BytesDroppedDDoS"
| summarize by Maximum, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "BytesDroppedDDoS" {
  name                = "BytesDroppedDDoS"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Maximum BytesDroppedDDoS"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "BytesDroppedDDoS"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "BytesDroppedDDoS"
| summarize by Maximum, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "UnderDDoSattackornot" {
  name                = "Under DDoS attack or not"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Under DDoS attack or not"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "IfUnderDDoSAttack"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "IfUnderDDoSAttack"
| summarize by Maximum, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "failedrequests" {
  name                = "failed requests"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "failed requests"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "failed requests"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "failedrequests"
| summarize by Maximum, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "HealthyHostCount" {
  name                = "Healthy Host Count"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Healthy Host Count"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "HealthyHostCount"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "HealthyHostCount"
| summarize by Maximum, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "ResponseStatus" {
  name                = "Response Status"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "ResponseStatus"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "ResponseStatus"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "ResponseStatus"
| summarize by Maximum, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "ApplicationGatewayThroughput" {
  name                = "Application Gateway - Throughput"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Application Gateway - Throughput"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Application Gateway - Throughput{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "Throughput"
| summarize by Maximum, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "ApplicationGateway-UnhealthyHostCount" {
  name                = "Application Gateway - Unhealthy Host Count"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Application Gateway - Unhealthy Host Count"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Application Gateway - Unhealthy Host Count{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "UnhealthyHostCount"
| summarize by Maximum, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 3
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "ApplicationGatewaysResponseStatus" {
  name                = "Application Gateways - ResponseStatus"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Application Gateways - ResponseStatus"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Application Gateways - ResponseStatus{{name.name}} is down.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18738Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "ResponseStatus"
| summarize by Maximum, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "LessThan"
    threshold = "100"
  }
}