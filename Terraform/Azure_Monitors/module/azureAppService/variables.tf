variable "resource_group_name" {
  description = "The name of the resource group we want to use"
  default    = "MonitorRG"
  
}

variable "actiongroupid" {
  description = "actiongroupname"
  default    =  ""
}

variable "location" {
  description = "The location/region where we are crrating the resource"
  default     = "West Europe"
}

# Everything below is for the module

/* variable "name" {
  description = ""
  default     = ""
} */

variable "scopes" {
  description = "scope of the resource"
  type = list(string)
  default = ["/subscriptions"]
}
/* 
variable "frequency" {
  description = ""
  default     = ""
}

variable "window_size " {
  description = ""
  default     = ""
}  
 */