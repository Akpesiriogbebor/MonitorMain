resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-TriggersSucceeded" {
  name                = "Azure-LogicApps-TriggersSucceeded"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-TriggersSucceeded"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-TriggersSucceeded{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "TriggersSucceeded"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-TriggersFailed" {
  name                = "Azure-LogicApps-TriggersFailed"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-TriggersFailed"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-TriggersSucceeded{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "TriggersSucceeded"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-TriggerThrottledEvents" {
  name                = "Azure-LogicApps-TriggerThrottledEvents"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-TriggerThrottledEvents"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-TriggerThrottledEvents{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "TriggerThrottledEvents"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-TriggerLatency" {
  name                = "Azure-LogicApps-TriggerLatency"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-TriggerLatency"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-TriggerLatency{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "TriggerLatency"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-ThrottledEvents" {
  name                = "Azure-LogicApps-ThrottledEvents"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-ThrottledEvents"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-ThrottledEvents{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "ActionThrottledEvents"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-SucceededActions" {
  name                = "Azure-LogicApps-SucceededActions"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-SucceededActions"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-SucceededActions{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "ActionsSucceeded"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-SkippedActions" {
  name                = "Azure-LogicApps-SkippedActions"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-SkippedActions"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-SkippedActions{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "ActionsSkipped"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-RunsSucceeded" {
  name                = "Azure-LogicApps-RunsSucceeded"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-RunsSucceeded"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-RunsSucceeded{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "RunsSucceeded"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-RunsFailed" {
  name                = "Azure-LogicApps-RunsFailed"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-RunsFailed"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-RunsFailed{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "RunsFailed"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-RunsCompleted" {
  name                = "Azure-LogicApps-RunsCompleted"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-RunsCompleted"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-RunsCompleted{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "RunsCompleted"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-RunThrottledEvents" {
  name                = "Azure-LogicApps-RunThrottledEvents"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-RunThrottledEvents"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-RunThrottledEvents{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "RunStartThrottledEvents"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-RunLatency" {
  name                = "Azure-LogicApps-RunLatency"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-RunLatency"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-RunLatency{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "RunLatency"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-RunFailurePercentage" {
  name                = "Azure-LogicApps-RunFailurePercentage"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-RunFailurePercentage"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-RunFailurePercentage{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "RunFailurePercentage"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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


resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-FailedActions" {
  name                = "Azure-LogicApps-FailedActions"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-FailedActions"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-FailedActions{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "ActionsFailed"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-ActionSuccessLatency" {
  name                = "Azure-LogicApps-ActionSuccessLatency"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-ActionSuccessLatency"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-ActionSuccessLatency{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "ActionSuccessLatency"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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


resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-LogicApps-ActionLatency" {
  name                = "Azure-LogicApps-ActionLatency"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-LogicApps-ActionLatency"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-LogicApps-ActionLatency{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "ActionLatency"
| where ResourceProvider contains "Microsoft.Logic/workflows"
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

