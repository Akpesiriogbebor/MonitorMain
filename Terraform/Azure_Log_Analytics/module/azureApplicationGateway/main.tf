resource "azurerm_monitor_scheduled_query_rules_alert" "application" {
  name                = "Azure-ApplicationGateway-FailedRequests"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-ApplicationGateways-SNATPortUtilization"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Application Gateway - Failed Request {{name.name}} exceeds the previously estimated average. Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FailedRequests"
| where ResourceProvider contains "Microsoft.Network/applicationGateways"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-ApplicationGateway-HealthyHostCount" {
  name                = "Azure-ApplicationGateway-HealthyHostCount"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-ApplicationGateways-HealthyHostCount"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Application Gateway - Healthy Host Count{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "HealthyHostCount"
| where ResourceProvider contains "Microsoft.Network/applicationGateways"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-ApplicationGateway-ResponseStatus" {
  name                = "Azure-ApplicationGateway-ResponseStatus"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-ApplicationGateway-ResponseStatus"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Application Gateway - Response - Status{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "ResponseStatus"
| where ResourceProvider contains "Microsoft.Network/applicationGateways"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-ApplicationGateway-Throughput" {
  name                = "Azure-ApplicationGateway-Throughput"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-ApplicationGateway-Throughput"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Application Gateway - Throughput{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "Throughput"
| where ResourceProvider contains "Microsoft.Network/applicationGateways"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-ApplicationGateway-TotalRequests" {
  name                = "Azure-ApplicationGateway-TotalRequests"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-ApplicationGateway-TotalRequests"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Application Gateway - Total - Requests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "TotalRequests"
| where ResourceProvider contains "Microsoft.Network/applicationGateways"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-ApplicationGateway-UnhealthyHostCount" {
  name                = "Azure-ApplicationGateway-UnhealthyHostCount"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-ApplicationGateway-UnhealthyHostCount"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Application Gateway - Unhealthy - Hosts- Count{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "UnhealthyHostCount"
| where ResourceProvider contains "Microsoft.Network/applicationGateways"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1
  }
}

# resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-ApplicationGateway-Status" {
#   name                = "Azure-ApplicationGateway-Status"
#   location            = var.location
#   resource_group_name = var.log_analytics_resource_group_name
  
#   action {
#     action_group           = [var.action_group_id]
#     email_subject          = "Azure-ApplicationGateway-Status"
#   }

#   data_source_id  = var.log_analytics_workspace_id
#   description     = "Azure - Application Gateway - Status{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
#   enabled         = true
#   query           = <<-QUERY
# AzureMetrics 
# | where TimeGenerated > ago(1min)
# | where MetricName == "UnhealthyHostCount"
# | where ResourceProvider contains "Microsoft.Network/applicationGateways"
# | summarize by Average, bin(TimeGenerated, 1min), Resource
# | render timechart
#   QUERY
#   severity        = 1
#   frequency       = 5
#   time_window     = 5
  
#   trigger {
#     operator  = "GreaterThanOrEqual"
#     threshold = 1
#   }
# }






