module "Action_Group" {
  source = "./Module/ActionGroup"
  resource_group_name = "${var.resource_group_name}"
}

module "application_gateway" {
  source = "./Module/application_gateway"
  resource_group_name = "${var.resource_group_name}"
  scopes  = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.Network/applicationGateways/graceTest"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"

}

module "application_services" {
  source = "./Module/application_service"
  resource_group_name = "${var.resource_group_name}"
  scopes            = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.Web/sites/graceochie"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
}

module "Azure-DataFactory" {
  source = "./Module/Azure-DataFactory"
  resource_group_name = "${var.resource_group_name}"
  scopes            = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.DataFactory/factories/test3332"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
}

module "Azure-AzureFirewall" {
  source = "./Module/AzureFirewall"
  resource_group_name = "${var.resource_group_name}"
  scopes            = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.Network/azureFirewalls/test"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
}

module "Azure-AzureStorage" {
  source = "./Module/AzureStorage"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.Storage/storageAccounts/teststoragemodule"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
}

module "Azure-AzureFunction" {
  source = "./Module/AzureFunction"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourcegroups/module/providers/Microsoft.Web/sites/moduletest"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
}

module "Azure-EventHub" {
  source = "./Module/EventHub"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.EventHub/namespaces/testhubnamemodule"]
  actiongroupid = "${module.Action_Group.actiongroup-id}" 
}
module "ExpressRoute" {
  source = "./Module/ExpressRoute"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.Network/expressRouteCircuits/test"]
  actiongroupid = "${module.Action_Group.actiongroup-id}" 
}

module "Azure-AzureKeyvault" {
  source = "./Module/AzureKeyvault"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.KeyVault/vaults/testmodule"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
} 

module "Azure-API_Management" {
  source = "./Module/API_Management"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourcegroups/module/providers/Microsoft.ApiManagement/service/testmanaged"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Azure-AzureMySQL" {
  source = "./Module/AzureMySQL"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.DBforMySQL/servers/testmodule"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

 module "Azure-LogicApp" {
  source = "./Module/LogicApp"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.Logic/workflows/testmodule"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Azure-MariaDB" {
  source = "./Module/MariaDB"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.DBforMariaDB/servers/testmodule23"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Azure-RedisCache" {
  source = "./Module/RedisCache"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.Cache/Redis/module"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Azure-ServiceBus" {
  source = "./Module/ServiceBus"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.ServiceBus/namespaces/testmodulegr"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Azure-SQL" {
  source = "./Module/SQL"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/972be2cf-c564-43af-a4a9-049a10a94c28/resourceGroups/module/providers/Microsoft.Sql/servers/testmodulew/databases/modulesiri"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

/*module "Azure-SQL_Managed_Instance" {
  source = "./Module/SQL_Managed_Instance"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.Sql/managedInstances/test33554"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}*/

module "LogAnalytics" {
  source = "./Module/LogAnalytics"
  resource_group_name = "${var.resource_group_name}"
}

#module "Azure-NetApp" {
#  source = "./Module/NetApp"
#  resource_group_name = "${azurerm_resource_group.resource_group.name}"
#  location            = "${var.location}"
#  
#}


