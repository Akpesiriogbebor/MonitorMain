resource "azurerm_monitor_metric_alert" "Azure-ExpressRoute-Bitspersecondoutputexceedslearnedvalues" {
          name                = "Azure-ExpressRoute-Bitspersecondoutputexceedslearnedvalues"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Bits per second output exceeds learned values"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

        dynamic_criteria {
                metric_namespace = "Microsoft.Network/expressRouteCircuits"
                metric_name      = "bitsoutpersecond"
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