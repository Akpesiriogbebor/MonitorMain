module "Action_Group" {
  source = "./module/ActionGroup"
  resource_group_name = "${var.resource_group_name}"
}

module "Azure-API_Management" {
  source = "./module/APIManagement"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}


module "AppServices" {
  source = "./module/AppServices"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "AzureFunction" {
  source = "./module/AzureFunction"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "AzureKeyvault" {
  source = "./module/AzureKeyvault"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "AzureMySql" {
  source = "./module/AzureMySql"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "DataFactory" {
  source = "./module/DataFactory"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "EventHub" {
  source = "./module/EventHub"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "ExpressRoute" {
  source = "./module/ExpressRoute"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Firewall" {
  source = "./module/Firewall"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "LogicApps" {
  source = "./module/LogicApps"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "MariaDB" {
  source = "./module/MariaDB"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "RedisCache" {
  source = "./module/RedisCache"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "SQLDB" {
  source = "./module/SQLDB"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

/* module "SQLMangedinstance" {
  source = "./module/SQLMangedinstance"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
} */

module "VirtualNetwork" {
  source = "./module/VirtualNetwork"
  resource_group_name = "${var.resource_group_name}"
  #actiongroupid = "${module.Action_Group.actiongroup-id}"
  
} 
