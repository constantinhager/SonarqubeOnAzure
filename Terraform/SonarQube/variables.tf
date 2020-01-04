variable "location" {
  description = "The azure region"
  default     = "west europe"
}

variable "resourcegroupName" {
  description = "the name of the resourcegroup"
  default     = "Soarqube-rg"
}

variable "containerRegistryName" {
  description = "The name of the container registry"
  default     = "chcontainerregistry"
}

variable "containerRegistrySku" {
  description = "The name of the container registry"
  default     = "Basic"
}

variable "AppServicePlanName" {
  description = "The name of the Azure App Service Plan"
  default     = "chappserviceplan"
}
