variable "resource_group_name" {
  description = "The name of the resource group we want to use"
  default    = "test"
  
}

variable "actiongroupid" {
  description = "actiongroupname"
  default    =  ""
}

variable "scopes" {
  description = "scope of the resource"
  type = list(string)
  default = [""]
}