variable "location" {
  description = "The azure region"
}

variable "resourcegroupName" {
  description = "the name of the resourcegroup"
}

variable "AppServiceName" {
  description = "The name of the Azure App Service"
}

variable "AppServicePlanId" {
  description = "The ID of the app service plan"
}

variable "SQLServerFQDN" {
  description = "The FQDN of the Azure SQL Server"
}

variable "DBName" {
  description = "The Name of the SonarQube Database"
}

variable "AdminUserName" {
  description = "The name of the Azure SQL Server Administrator"
}

variable "AdminPassword" {
  description = "The password of the Azure SQL Server Administrator"
}

variable "ACRLoginServer" {
  description = "The fqdn of the ACR"
}

variable "ACRUserName" {
  description = "The username"
}

variable "ACRPassword" {
  description = "The password"
}

variable "BuildId" {
  description = "The Id of the current Azure DevOps Build"
}
