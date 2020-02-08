variable "location" {
  description = "The azure region"
  default     = "west europe"
}

variable "resourcegroupName" {
  description = "the name of the resourcegroup"
}

variable "AppServicePlanName" {
  description = "The name of the Azure App Service Plan"
  default     = "chappserviceplan"
}

variable "SQLServerName" {
  description = "The name of the Azure SQL Server"
  default     = "chsqlserver"
}

variable "AdminUserName" {
  description = "The name of the Azure SQL Server Administrator"
}

variable "AdminPassword" {
  description = "The password of the Azure SQL Server Administrator"
}

variable "DBName" {
  description = "The name of the sonarqube SQL Database"
  default     = "SonarQube"
}

variable "AppServiceName" {
  description = "The name of the Azure App Service"
  default     = "chSonarQubeAppService"
}

variable "containerRegistrySASToken" {
  description = "The SAS Token for the containerregistry storage account"
}
