data "azurerm_virtual_machine" "example" {
  name                = var.virtualMachine
  resource_group_name = var.resource_group_name # where your VM resides in your subscription
  
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.example.id
  
}

output "virtual_machine_location" {
  value = data.azurerm_virtual_machine.example.location
  
}

resource "azurerm_storage_account" "main" {
  name                     = var.StorageAccount
  resource_group_name      = data.azurerm_virtual_machine.example.resource_group_name # where your VM resides in your subscription
  location                 = var.location # which region your VM resides 
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_log_analytics_workspace" "LAW" {
  name                = var.log_analytics_workspace
 location            = var.location #which region your VM resides 
  resource_group_name = data.azurerm_virtual_machine.example.resource_group_name # where your VM resides in your subscription
 sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_log_analytics_solution" "ContainerInsights" {
  solution_name         = var.log_analytics_solution
  location              = var.location # which region your VM resides 
  resource_group_name   = data.azurerm_virtual_machine.example.resource_group_name # where your VM resides in your subscription
  workspace_resource_id = azurerm_log_analytics_workspace.LAW.id
  workspace_name        = azurerm_log_analytics_workspace.LAW.name
  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}


#################################################

/* Agent for Linux VM */
##################################################
/* resource "azurerm_virtual_machine_extension" "OMS" {
  name                       = "test-OMSExtension"
  virtual_machine_id         =  data.azurerm_virtual_machine.example.id
  publisher                  = "Microsoft.EnterpriseCloud.Monitoring"
  type                       = "OmsAgentForLinux"
  type_handler_version       = "1.13"
  auto_upgrade_minor_version = true

  settings = <<SETTINGS
    {
      "workspaceId" : "${azurerm_log_analytics_workspace.LAW.workspace_id}"
    }
  SETTINGS

  protected_settings = <<PROTECTED_SETTINGS
    {
      "workspaceKey" : "${azurerm_log_analytics_workspace.LAW.primary_shared_key}"
    }
  PROTECTED_SETTINGS
}

# Dependency Agent for Linux
resource "azurerm_virtual_machine_extension" "da" {
  name                       = "DAExtension"
  virtual_machine_id         =  data.azurerm_virtual_machine.example.id
  publisher                  = "Microsoft.Azure.Monitoring.DependencyAgent"
  type                       = "DependencyAgentLinux"
  type_handler_version       = "9.5"
  auto_upgrade_minor_version = true

} */
# Agent for Windows

# Dependency Agent for Windows

#################################################

/* Agent for Windows VM */
##################################################

resource "azurerm_virtual_machine_extension" "MMA" {
  name                       = "test-MMAextension"
  virtual_machine_id         =  data.azurerm_virtual_machine.example.id
  publisher                  = "Microsoft.EnterpriseCloud.Monitoring"
  type                       = "MicrosoftMonitoringAgent"
  type_handler_version       = "1.0"
  auto_upgrade_minor_version = true

  settings = <<SETTINGS
    {
      "workspaceId" : "${azurerm_log_analytics_workspace.LAW.workspace_id}"
    }
  SETTINGS

  protected_settings = <<PROTECTED_SETTINGS
    {
      "workspaceKey" : "${azurerm_log_analytics_workspace.LAW.primary_shared_key}"
    }
  PROTECTED_SETTINGS
}

resource "azurerm_virtual_machine_extension" "da" {
  name                       = "DAExtension"
  virtual_machine_id         =  data.azurerm_virtual_machine.example.id
  publisher                  = "Microsoft.Azure.Monitoring.DependencyAgent"
  type                       = "DependencyAgentWindows"
  type_handler_version       = "9.5"
  auto_upgrade_minor_version = true

}

resource "azurerm_template_deployment" "workspace" {
  name                = azurerm_log_analytics_workspace.LAW.name 
  resource_group_name = var.resource_group_name
  template_body       = file("${path.module}/PerformanceCountersLogAnalytics.json")

    parameters = {
      "workspaceName"   = azurerm_log_analytics_workspace.LAW.name
      "location"        = var.location
    }

  deployment_mode = "Incremental"
}

resource "azurerm_monitor_action_group" "action_group_alert" {
  name                = "action-group"
  resource_group_name = var.resource_group_name
  short_name          = "ag-botprod"

 dynamic "email_receiver" {
      for_each = var.admin_email


    content {
         name          = "sendto-${email_receiver.key}"
         email_address =  email_receiver.value
      }
    }
 
 

  arm_role_receiver {
    name                    = "sentorolemonitoringreader"
    role_id                 = "43d0d8ad-25c7-4714-9337-8ba259a9fe05"
    use_common_alert_schema = true
  }

   arm_role_receiver {
    name                    = "sentorolemonitoringcontributor"
    role_id                 = "749f88d5-cbae-40b8-bcfc-e573ddc772fa"
    use_common_alert_schema = true
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "monitorCPU" {
  name                = "monitor-CPU-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  
  action {
    action_group           = [azurerm_monitor_action_group.action_group_alert.id]
    email_subject          = "Maximum CPU Utilization across VM"
  }

  data_source_id  = azurerm_log_analytics_workspace.LAW.id
  description     = "Maximum CPU Utilization across VM"
  enabled         = true
  query           = <<-QUERY
  Perf
| where TimeGenerated > ago(1min)
| where CounterName == "% Processor Time" 
| summarize AggregatedValue = max(95) by Computer
| project TimeGenerated, Computer, ObjectName, CounterName, InstanceName, CounterValue  
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "monitor_CPU" {
  name                = "CPU-test-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  
  action {
    action_group           = [azurerm_monitor_action_group.action_group_alert.id]
    email_subject          = "Memory Over 85%"
  }

  data_source_id  = azurerm_log_analytics_workspace.LAW.id
  description     = "Average CPU Utilization across VM"
  enabled         = true
  query           = <<-QUERY
  Perf
| where TimeGenerated > ago(1min)
| where ObjectName == "Processor" and CounterName == "% Processor Time" and InstanceName == "_Total" 
| summarize AVGCPU = avg(85) by Computer
| project TimeGenerated, Computer, ObjectName, CounterName, InstanceName, CounterValue 
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "monitor_memory" {
  name                = "monitor-memory-test-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  
  action {
    action_group           = [ azurerm_monitor_action_group.action_group_alert.id ]
    email_subject          = "Memory Over 80%"
  }

  data_source_id  = azurerm_log_analytics_workspace.LAW.id
  description     = "Alert to monitor memory used"
  enabled         = true
  query           = <<-QUERY
  Perf
| where TimeGenerated > ago(1min)
| where CounterName contains "% Used Memory" and InstanceName != "_Total"  and CounterValue  >=80
| project TimeGenerated, Computer, ObjectName, CounterName, InstanceName, CounterValue 
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "monitor_disk_space" {
  name                = "monitor-disk-test-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  
  action {
    action_group           = [azurerm_monitor_action_group.action_group_alert.id]
    email_subject          = "Used Disk Space Over 80%"
  }

  data_source_id  = azurerm_log_analytics_workspace.LAW.id
  description     = "Alert to monitor free disk space"
  enabled         = true
  query           = <<-QUERY
  Perf
| where TimeGenerated > ago(5min)
| where (ObjectName == "Logical Disk" or ObjectName == "LogicalDisk") and CounterName contains "% Used Space" and InstanceName != "_Total" and InstanceName != "HarddiskVolume1" and CounterValue  >=85
| project TimeGenerated, Computer, ObjectName, CounterName, InstanceName, CounterValue 
  QUERY
  severity        = 1
  frequency       = 5
  time_window     = 5
  
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}