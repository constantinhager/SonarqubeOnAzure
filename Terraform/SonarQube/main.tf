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

