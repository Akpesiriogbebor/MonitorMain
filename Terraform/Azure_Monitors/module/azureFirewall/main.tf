resource "azurerm_monitor_metric_alert" "AzureFirewallpossibleSNATportexhaustion-unhealthystate" {
          name                = "AzureFirewallpossibleSNATportexhaustion-unhealthystate"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "If your firewall is running into SNAT port exhaustion, you should add at least five public IP address. This increases the number of SNAT ports available. For more information, see Azure Firewall features. @webhook-aimWebhook"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

          dynamic_criteria {
                metric_namespace = "Microsoft.Network/azurefirewalls"
                metric_name      = "firewallhealth"
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