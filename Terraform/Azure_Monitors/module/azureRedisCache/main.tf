resource "azurerm_monitor_metric_alert" "Azure-RedisCache-TotalKeys" {
          name                = "Azure-RedisCache-TotalKeys"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Redis Cache - Total Keys{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

      dynamic_criteria {
                metric_namespace = "Microsoft.Cache/redis"
                metric_name      = "totalkeys"
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


resource "azurerm_monitor_metric_alert" "Azure-RedisCache-SetCommands" {
          name                = "Azure-RedisCache-SetCommands"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Redis Cache - Set Commands{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

      dynamic_criteria {
                metric_namespace = "Microsoft.Cache/redis"
                metric_name      = "setcommands"
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

resource "azurerm_monitor_metric_alert" "Azure-RedisCache-ProcessorTime-percent" {
          name                = "Azure-RedisCache-ProcessorTime(percent)"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Redis Cache - Processor Time (percent){{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

      dynamic_criteria {
                metric_namespace = "Microsoft.Cache/redis"
                metric_name      = "percentprocessortime"
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


resource "azurerm_monitor_metric_alert" "Azure-RedisCache-GetCommands" {
          name                = "Azure-RedisCache-GetCommands"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Redis Cache - Get Commands{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

      dynamic_criteria {
                metric_namespace = "Microsoft.Cache/redis"
                metric_name      = "getcommands"
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

resource "azurerm_monitor_metric_alert" "Azure-RedisCache-ExpiredKeys" {
          name                = "Azure-RedisCache-ExpiredKeys"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Redis Cache - Expired Keys{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

      dynamic_criteria {
                metric_namespace = "Microsoft.Cache/redis"
                metric_name      = "expiredkeys"
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

resource "azurerm_monitor_metric_alert" "Azure-RedisCache-EvictedKeys" {
          name                = "Azure-RedisCache-EvictedKeys"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Redis Cache - Evicted Keys{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"

     dynamic_criteria {
                metric_namespace = "Microsoft.Cache/redis"
                metric_name      = "evictedkeys"
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


resource "azurerm_monitor_metric_alert" "Azure-RedisCache-CacheMisses" {
          name                = "Azure-RedisCache-CacheMisses"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Redis Cache - Cache Misses{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"


     dynamic_criteria {
                metric_namespace = "Microsoft.Cache/redis"
                metric_name      = "cachemisses"
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

resource "azurerm_monitor_metric_alert" "Azure-RedisCache-CacheHits" {
          name                = "Azure-RedisCache-CacheHits"
          resource_group_name = var.resource_group_name
          scopes              = var.scopes
          description         = "Azure - Redis Cache - Cache Hits{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          frequency        =  "PT5M"
          severity         =  4
          window_size      =  "PT5M"


     dynamic_criteria {
                metric_namespace = "Microsoft.Cache/redis"
                metric_name      = "cachehits"
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

