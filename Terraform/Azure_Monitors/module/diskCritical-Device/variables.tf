variable "resource_group" {
  description = "The name of the resource group we want to use"
  default    = "test"
  
}

variable "location" {
  description = "The location/region where we are crrating the resource"
  default     = "West Europe"
}

variable "scopes" {
  description = "scope of the resource"
  type = list(string)
  default = ["/subscriptions/1adf80ff-67ea-4ac7-91eb-3a328416d9b7/resourceGroups/cloud-shell-storage-eastus/providers/Microsoft.Storage/storageAccounts/cs2100320007e6a09dd"]
}