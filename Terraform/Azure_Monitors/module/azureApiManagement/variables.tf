variable "resource_group_name" {
  description = "The name of the resource group we want to use"
  default    = "TestRG"
  
}

variable "ApiManagement" {
  description = "The name of the apimanagement"
  default    = "testapimgt123"
  
}

variable "actiongroupid" {
  description = "actiongroupname"
  default    =  ""
}

variable "scopes" {
  description = "scope of the resource"
  type = list(string)
  default = ["/subscriptions/"]
}