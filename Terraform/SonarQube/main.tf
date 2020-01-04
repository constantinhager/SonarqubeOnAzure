module "AzureResourceGroup" {
  source = "./modules/azure_resourcegroup"

  location          = "${var.location}"
  resourcegroupName = "${var.resourcegroupName}"
}
