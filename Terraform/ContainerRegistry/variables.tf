variable "location" {
  description = "The azure region"
  default     = "west europe"
}

variable "resourcegroupName" {
  description = "the name of the resourcegroup"
  default     = "ContainerRegistry-rg"
}

variable "containerRegistryName" {
  description = "The name of the container registry"
}

variable "containerRegistrySku" {
  description = "The name of the container registry"
  default     = "Basic"
}
