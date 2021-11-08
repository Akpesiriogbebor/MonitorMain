module "azureAction_Group" {
  source = "./module/azureActionGroup"
  resource_group_name = "${var.resource_group_name}"
}

module "azureApiManagement" {
  source = "./module/azureApiManagement"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}


module "azureAppServices" {
  source = "./module/azureAppServices"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureFunction" {
  source = "./module/azureFunction"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureKeyvault" {
  source = "./module/azureKeyvault"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureMySql" {
  source = "./module/azureMySql"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureDataFactory" {
  source = "./module/azureDataFactory"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureEventHub" {
  source = "./module/azureEventHub"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureExpressRoute" {
  source = "./module/azureExpressRoute"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureFirewall" {
  source = "./module/azureFirewall"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureLogicApps" {
  source = "./module/azureLogicApps"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureMariaDB" {
  source = "./module/azureMariaDB"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureRedisCache" {
  source = "./module/azureRedisCache"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureSql" {
  source = "./module/azureSql"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureSplMangedinstance" {
  source = "./module/azureSqlMangedinstance"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
}

module "azureVirtualNetwork" {
  source = "./module/azureVirtualNetwork"
  resource_group_name = "${var.resource_group_name}"
  action_group_id = "${module.Action_Group.action_group_id}"
  
} 