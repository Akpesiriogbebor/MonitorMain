variable "resource_group_name" {
  description = "The name of the resource group we want to use"
  default    = "Test"
  
}
variable "actiongroupid" {
  description = "actiongroupname"
  default    =  ""
}

variable "scopes" {
  description = "scope of the resource"
  type = list(string)
  default = ["/subscriptions/601df692-bc7e-45df-9697-4049d4adf212/resourceGroups/terraform/providers/Microsoft.KeyVault/vaults/KeyvaultTest1992"]
}