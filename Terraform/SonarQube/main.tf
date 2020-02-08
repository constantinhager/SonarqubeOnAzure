data "terraform_remote_state" "containerregistry" {
  backend = "azurerm"
  config = {
    storage_account_name = "chsonarquberesourcegroup"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
    sas_token            = var.containerRegistrySASToken
  }
}

module "AzureAppServicePlan" {
  source = "./modules/azure_appserviceplan"

  location           = var.location
  resourcegroupName  = var.resourcegroupName
  AppServicePlanName = var.AppServicePlanName
}

module "AzureSQLServer" {
  source = "./modules/azure_sqlserver"

  location          = var.location
  resourcegroupName = var.resourcegroupName
  SQLServerName     = var.SQLServerName
  AdminUserName     = var.AdminUserName
  AdminPassword     = var.AdminPassword
  DBName            = var.DBName
}

module "AzureAppService" {
  source = "./modules/azure_appservice"

  location          = var.location
  resourcegroupName = var.resourcegroupName
  AppServiceName    = var.AppServiceName
  AppServicePlanId  = module.AzureAppServicePlan.serviceplanid
  SQLServerFQDN     = module.AzureSQLServer.sqlserverfqdn
  DBName            = var.DBName
  AdminUserName     = var.AdminUserName
  AdminPassword     = var.AdminPassword
  ACRLoginServer    = data.terraform_remote_state.containerregistry.outputs.login_server
  ACRUserName       = data.terraform_remote_state.containerregistry.outputs.admin_username
  ACRPassword       = data.terraform_remote_state.containerregistry.outputs.admin_password
}
