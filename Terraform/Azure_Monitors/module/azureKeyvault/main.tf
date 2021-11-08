resource "azurerm_monitor_metric_alert" "Azure-Keyvaults-Availability" {
  name                = "Azure-Keyvaults-Availability"
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = "Azure - Keyvaults - Availability{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  frequency           = "PT15M"
  severity            = 1
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.KeyVault/vaults"
    metric_name      = "availability"
    aggregation      = "Average"
    operator         = "LessThan"
    threshold        = "100"

  }

  action {
    action_group_id = var.actiongroupid

  }
}
resource "azurerm_monitor_metric_alert" "Azure-Keyvaults-APIresults" {
  name                = "Azure-Keyvaults-APIresults"
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = "Azure - Keyvaults - API results{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  frequency           = "PT1H"
  severity            = 4
  window_size         = "PT1H"

  dynamic_criteria {
    metric_namespace = "Microsoft.KeyVault/vaults"
    metric_name      = "serviceapiresult"
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
resource "azurerm_monitor_metric_alert" "Azure-Keyvaults-APIlatency" {
  name                = "Azure-Keyvaults-APIlatency"
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = "Azure - Keyvaults - API latency{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  frequency           = "PT1H"
  severity            = 4
  window_size         = "PT1H"
dynamic_criteria {
    metric_namespace = "Microsoft.KeyVault/vaults"
    metric_name      = "serviceapilatency"
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
resource "azurerm_monitor_metric_alert" "Azure-Keyvaults-APIhits" {
  name                = "Azure-Keyvaults-APIhits"
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = "Azure - Keyvaults - API hits{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
  frequency           = "PT1H"
  severity            = 4
  window_size         = "PT1H"

dynamic_criteria {
    metric_namespace = "Microsoft.KeyVault/vaults"
    metric_name      = "serviceapihit"
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

