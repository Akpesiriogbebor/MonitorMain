resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-APIManagement-FailedRequests" {
  name                = "Azure-APIManagement-FailedRequests"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-APIManagement-FailedRequests"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-APIManagement-FailedRequests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FailedRequests"
| where ResourceProvider contains "Microsoft.ApiManagement/service"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-APIManagement-OverallDurationOfGatewayRequests" {
  name                = "Azure-APIManagement-OverallDurationOfGatewayRequests"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-APIManagement-OverallDurationOfGatewayRequests"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - APIManagement - Overall - Duration - Of - Gateway - Requests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "OverallDurationOfGatewayRequests"
| where ResourceProvider contains "Microsoft.ApiManagement/service"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-APIManagement-SuccessfulRequests" {
  name                = "Azure-APIManagement-SuccessfulRequests"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-APIManagement-SuccessfulRequests"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - APIManagement - Successful - Requests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "SuccessfulRequests"
| where ResourceProvider contains "Microsoft.ApiManagement/service"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-APIManagement-UnauthorizedRequests" {
  name                = "Azure-APIManagement-UnauthorizedRequests"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-APIManagement-UnauthorizedRequests"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - APIManagement - Unauthorized - Requests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "UnauthorizedRequests"
| where ResourceProvider contains "Microsoft.ApiManagement/service"
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




