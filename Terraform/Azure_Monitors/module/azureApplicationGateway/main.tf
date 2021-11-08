
resource "azurerm_monitor_metric_alert" "application" {
  name                = "Azure-ApplicationGateway-FailedRequests"
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = "Azure - Application Gateway - Failed Request {{name.name}} exceeds the previously estimated average. Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  frequency           = "PT1H" /* Frequency was change from PT4H to PT5M */
  severity            = 4
  window_size         = "PT1H" /* window_size was change from PT4H to PT5M */

  dynamic_criteria {
    metric_namespace = "Microsoft.Network/applicationGateways"
    metric_name      = "failedrequests"
    aggregation      = "Total"
    operator         = "GreaterOrLessThan"
    alert_sensitivity        = "Medium"
    evaluation_total_count   = 4
    evaluation_failure_count = 4
  }
  action {
    action_group_id = var.actiongroupid
  }
}

resource "azurerm_monitor_metric_alert" "Azure-ApplicationGateway-HealthyHostCount" {
  name                = "Azure-ApplicationGateway-HealthyHostCount"
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = "Azure - Application Gateway - Healthy Host Count{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  frequency           = "PT1H" //Frequency was change from PT4H to PT5M
  severity            = 4
  window_size         = "PT1H" //window_size was change from PT4H to PT5M

  dynamic_criteria {
    metric_namespace = "Microsoft.Network/applicationGateways"
    metric_name      = "HealthyHostCount"
    aggregation      = "Average"
    operator         = "GreaterOrLessThan"
    alert_sensitivity        = "Medium"
    evaluation_total_count   = 4
    evaluation_failure_count = 4
  }
  action {
    action_group_id = var.actiongroupid


  }
}

resource "azurerm_monitor_metric_alert" "Azure-ApplicationGateway-ResponseStatus" {
  name                = "Azure-ApplicationGateway-ResponseStatus"
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = "Azure - Application Gateway - Response Status{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  frequency           = "PT1H" //frequency was change from PT4H to PT5M
  severity            = 4
  window_size         = "PT1H" //window_size was change from PT4H to PT5M

dynamic_criteria {
    metric_namespace = "Microsoft.Network/applicationGateways"
    metric_name      = "ResponseStatus"
    aggregation      = "Total"
    operator         = "GreaterOrLessThan"
    alert_sensitivity        = "Medium"
    evaluation_total_count   = 4
    evaluation_failure_count = 4
  }


  action {
    action_group_id = var.actiongroupid


  }
}

resource "azurerm_monitor_metric_alert" "Azure-ApplicationGateway-Throughput" {
  name                = "Azure-ApplicationGateway-Throughput"
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = "Azure - Application Gateway - Throughput{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  frequency           = "PT1H" //frequency was change from PT4H to PT5M
  severity            = 4
  window_size         = "PT1H" //window_size was change from PT4H to PT5M

  criteria {
    metric_namespace = "Microsoft.Network/applicationGateways"
    metric_name      = "Throughput"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = "100"
  }
  action {
    action_group_id = var.actiongroupid


  }
}

resource "azurerm_monitor_metric_alert" "Azure-ApplicationGateway-TotalRequests" {
  name                = "Azure-ApplicationGateway-TotalRequests"
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = "Azure - Application Gateway - Total Requests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  frequency           = "PT1H" //frequency was change from PT4H to PT5M
  severity            = 4
  window_size         = "PT1H" //window_size was change from PT4H to PT5M
dynamic_criteria {
    metric_namespace = "Microsoft.Network/applicationGateways"
    metric_name      = "TotalRequests"
    aggregation      = "Total"
    operator         = "GreaterOrLessThan"
    alert_sensitivity        = "Medium"
    evaluation_total_count   = 4
    evaluation_failure_count = 4
  }


  action {
    action_group_id = var.actiongroupid


  }
}

resource "azurerm_monitor_metric_alert" "Azure-ApplicationGateway-UnhealthyHostCount" {
  name                = "Azure-ApplicationGateway-UnhealthyHostCount"
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = "Azure - Application Gateway - Unhealthy Host Count{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  frequency           = "PT1H" //frequency was change from PT4H to PT5M
  severity            = 4
  window_size         = "PT1H" //window_size was change from PT4H to PT5M

dynamic_criteria {
    metric_namespace = "Microsoft.Network/applicationGateways"
    metric_name      = "UnhealthyHostCount"
    aggregation      = "Average"
    operator         = "GreaterOrLessThan"
    alert_sensitivity        = "Medium"
    evaluation_total_count   = 4
    evaluation_failure_count = 4
}
  action {
    action_group_id = var.actiongroupid


  }
}

resource "azurerm_monitor_metric_alert" "Azure-ApplicationGateways-Status" {
  name                = "Azure-ApplicationGateways-Status"
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = "Azure - Application Gateways - Status{{name.name}} is down.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=18738Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  frequency           = "PT15M"
  severity            = 4
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.Network/applicationGateways"
    metric_name      = "ResponseStatus"
    aggregation      = "Total"
    operator         = "LessThan"
    threshold        = "100"
  }
  action {
    action_group_id = var.actiongroupid
    
  }
}
