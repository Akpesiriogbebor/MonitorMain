variable "resource_group_name" {
  description = "The name of the resource group we want to use"
  default    = "TestRG"
  
}

variable "location" {
  description = "The location/region where we are crrating the resource"
  default     = "West Europe"
}

variable "actiongroupid" {
  description = "actiongroupname"
  default    =  ""
}

variable "scopes" {
  description = "scope of the resource"
  type = list(string)
  default = ["/subscriptions"]
}