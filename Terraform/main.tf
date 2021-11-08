module "Azure_Log_Analytics" {
  source = "./Azure_Log_Analytics"
  resource_group_name = "${var.resource_group_name}"
  log_analytics_workspace_id = "${var.log_analytics_workspace_id}"
  location = "${var.location}"
}

# module "Azure_Monitors" {
#   source = "./Azure_Monitors_Terraform"
#   resource_group_name = "${var.resource_group_name}"
#   actiongroupid = "${module.Action_Group.actiongroup-id}"
#   location = "${var.location}"

  
# }