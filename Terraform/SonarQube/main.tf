module "AzureAppServicePlan" {
  source = "./modules/azure_appserviceplan"

  location           = "${var.location}"
  resourcegroupName  = "${var.resourcegroupName}"
  AppServicePlanName = "${var.AppServicePlanName}"
}

module "AzureSQLServer" {
  source = "./modules/azure_sqlserver"

  location          = "${var.location}"
  resourcegroupName = "${var.resourcegroupName}"
  SQLServerName     = "${var.SQLServerName}"
  AdminUserName     = "${var.AdminUserName}"
  AdminPassword     = "${var.AdminPassword}"
  DBName            = "${var.DBName}"
}

module "AzureAppService" {
  source = "./modules/azure_appservice"

  location          = "${var.location}"
  resourcegroupName = "${var.resourcegroupName}"
  AppServiceName    = "${var.AppServiceName}"
  AppServicePlanId  = "${module.AzureAppServicePlan.serviceplanid}"
  SQLServerFQDN     = "${module.AzureSQLServer.sqlserverfqdn}"
  DBName            = "${var.DBName}"
  AdminUserName     = "${var.AdminUserName}"
  AdminPassword     = "${var.AdminPassword}"
  ACRLoginServer    = "${module.AzureContainerRegistry.login_server}"
  ACRUserName       = "${module.AzureContainerRegistry.admin_username}"
  ACRPassword       = "${module.AzureContainerRegistry.admin_password}"
}
