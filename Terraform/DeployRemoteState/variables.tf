
variable "resource_group_name" {
  type        = string
  description = "the name of the resource group"
}

variable "location" {
  type        = string
  default     = "West Wurope"
  description = "The location where the storage account should be deployed to"
}

variable "naming_prefix" {
  type        = string
  default     = "ch"
  description = "The prefix for the storage account"
}