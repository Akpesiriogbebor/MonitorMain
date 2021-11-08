variable "resource_group_name" {
  description = "The name of the resource group we want to use"
  default    = "TestRG"
  
}

variable "AzureFunction" {
  description = "The name of the AzureFunction"
  default    = "TestAGWNew23"
  
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