variable "virtualMachine" {
  description = "The name of the exsiting VM"
  default    = "testvm"
  
}

variable "admin_email" {
  description = "The admin mail address"
  type = list(string)
  default    = ["test@gmail.com"]
  
}

variable "environment" {
  description = "The deployment environment"
  default    = "Test"
  
}

variable "location" {
  description = "region of the VM"
  default    = "West Europe"
  
}

variable "resource_group_name" {
  description = "The name of the resource group the VM reside"
  default    = "VM"
  
}

variable "StorageAccount" {
  description = "The name of the resource group we want to use"
  default    = "adensatestggiiouf"
  
}

variable "log_analytics_workspace" {
  description = "The name of the resource group we want to use"
  default    = "adenlogworkspace"
  
}

variable "log_analytics_solution" {
  description = "The name of the resource group we want to use"
  default    = "ContainerInsights"
  
}


variable "actiongroupid" {
  description = "actiongroupname"
  default    =  ""
}