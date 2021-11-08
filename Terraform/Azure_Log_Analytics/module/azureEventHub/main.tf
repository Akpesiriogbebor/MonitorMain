resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-EventHubNamespaces-Status" {
  name                = "Azure-EventHubNamespaces-Status"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-EventHubNamespaces-Status"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-EventHubNamespaces-Status{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "ActiveConnections"
| where ResourceProvider contains "Microsoft.EventHub/namespaces"
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