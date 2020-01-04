module "AzureResourceGroup" {
  source = "./modules/azure_resourcegroup"

  location          = "${var.location}"
  resourcegroupName = "${var.resourcegroupName}"
}

module "AzureContainerRegistry" {
  source = "./modules/azure_containerregistry"

  location              = "${var.location}"
  resourcegroupName     = "${var.resourcegroupName}"
  containerRegistryName = "${var.containerRegistryName}"
  containerRegistrySku  = "${var.containerRegistrySku}"
}

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
}
