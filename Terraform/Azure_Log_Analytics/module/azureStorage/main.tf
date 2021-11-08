resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-StorageTableServices-Transactions" {
  name                = "Azure-StorageTableServices-Transactions"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-StorageTableServices-Transactions"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-StorageTableServices-Transactions{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "Transactions"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/tableServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-StorageTableServices-ServerLatency" {
  name                = "Azure-StorageTableServices-ServerLatency"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-StorageTableServices-ServerLatency"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-StorageTableServices-ServerLatency{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "SuccessServerLatency"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/tableServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}


resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-StorageQueueServices-ServerLatency" {
  name                = "Azure-StorageQueueServices-ServerLatency"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-StorageQueueServices-ServerLatency"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-StorageQueueServices-ServerLatency{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "SuccessServerLatency"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/queueServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-StorageQueueServices-Transactions" {
  name                = "Azure-StorageQueueServices-Transactions"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-StorageQueueServices-Transactions"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-StorageQueueServices-Transactions{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "Transactions"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/queueServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-StorageFileServices-Transactions" {
  name                = "Azure-StorageFileServices-Transactions"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-StorageFileServices-Transactions"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-StorageFileServices-Transactions{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "Transactions"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-StorageFileServices-ServerLatency" {
  name                = "Azure-StorageFileServices-ServerLatency"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-StorageFileServices-ServerLatency"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-StorageFileServices-ServerLatency{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "SuccessServerLatency"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-StorageBlobServices-Transactions" {
  name                = "Azure-StorageBlobServices-Transactions"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-StorageBlobServices-Transactions"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-StorageBlobServices-Transactions{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "Transactions"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/blobServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-StorageBlobServices-ServerLatency" {
  name                = "Azure-StorageBlobServices-ServerLatency"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-StorageBlobServices-ServerLatency"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-StorageBlobServices-ServerLatency{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "SuccessServerLatency"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/blobServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}


resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Transactions" {
  name                = "Azure-Storage-Transactions"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Transactions"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure-Storage-Transactions{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "Transactions"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Successe2elatency-Testing" {
  name                = "Azure-Storage-Successe2elatency-Testing"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Successe2elatency-Testing"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "{{#is_alert}} Azure Server: {{name.name}}, IP: {{name.ip}} - Azure Storage end to end latency is greater than 600 ms Please refer to the following reaction process:https://apptemetry/knowledgebase/article.aspx?id=17314{{/is_alert}}@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "SuccessServerLatency"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 600
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-800Gb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(800Gb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(800Gb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (800Gb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 780000000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-5Tb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(5Tb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(5Tb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (5Tb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4900000000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-50Gb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(50Gb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(50Gb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (50Gb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 49000000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-4Gb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(4Gb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(4Gb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (4Gb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 3500000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-4-5Gb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(4.5Gb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(4.5Gb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (4.5Gb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 4400000000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-3-5Gb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(3.5Gb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(3.5Gb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (3.5Gb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 3400000000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-2Gb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(2Gb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(2Gb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (2Gb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1500000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-2Tb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(2Tb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(2Tb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (2Tb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1900000000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-2-6Tb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(2.6Tb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(2.6Tb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (2.6Tb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 2500000000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-2-1Tb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(2.1Tb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(2.1Tb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (2.1Tb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 2000000000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-120Gb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(120Gb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(120Gb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (120Gb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 140000000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-150Gb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(150Gb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(150Gb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (150Gb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 100000000000
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-Storage-Fileservices-FileShareQuota-1-9Tb" {
  name                = "Azure-Storage-Fileservices-FileShareQuota(1.9Tb)"
  location            = var.location
  resource_group_name = var.log_analytics_resource_group_name
  
  action {
    action_group           = [var.action_group_id]
    email_subject          = "Azure-Storage-Fileservices-FileShareQuota(1.9Tb)"
  }

  data_source_id  = var.log_analytics_workspace_id
  description     = "Azure - Storage - File services - File Share Quota (1.9Tb) {{name.name}}Storage Sync Service: {{name.name}}, IP: {{name.ip}}Please follow the reaction process here:https://apptemetry/knowledgebase/Article.aspx?id=18383Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx@webhook-aimWebhook"
  enabled         = true
  query           = <<-QUERY
AzureMetrics 
| where TimeGenerated > ago(1min)
| where MetricName == "FileShareCapacityQuota"
| where ResourceProvider contains "Microsoft.Storage/storageAccounts/fileServices"
| summarize by Average, bin(TimeGenerated, 1min), Resource
| render timechart
  QUERY
  severity        = 4
  frequency       = 60
  time_window     = 60
  
  trigger {
    operator  = "GreaterThanOrEqual"
    threshold = 1800000000000
  }
}








