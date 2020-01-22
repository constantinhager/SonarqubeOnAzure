
variable "resource_group_name" {
  description = "the name of the resource group"
}

variable "location" {
  default     = "West Wurope"
  description = "The location where the storage account should be deployed to"
}

variable "naming_prefix" {
  default     = "ch"
  description = "The prefix for the storage account"
}
