resource "azurerm_template_deployment" "appservice" {
  name                = "appservice-ARM"
  resource_group_name = var.resourcegroupName

  template_body = file("${path.module}/appservice.json")

  deployment_mode = "Incremental"

  parameters = {
    "siteName"                       = var.AppServiceName
    "location"                       = var.location
    "servicePlanName"                = var.AppServicePlanId
    "sqlServerName"                  = var.SQLServerFQDN
    "databaseName"                   = var.DBName
    "sqlServerAdministratorUsername" = var.AdminUserName
    "sqlServerAdministratorPassword" = var.AdminPassword
    "dockerServerURL"                = var.ACRLoginServer
    "ACRUserName"                    = var.ACRUserName
    "ACRPassword"                    = var.ACRPassword
}