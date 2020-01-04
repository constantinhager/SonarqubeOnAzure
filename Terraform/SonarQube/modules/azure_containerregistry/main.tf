resource "random_integer" "sa_num" {
  min = 10000
  max = 99999
}

data "azurerm_container_registry" "acr_data" {
  name                = "${var.containerRegistryName}${random_integer.sa_num.result}"
  resource_group_name = "${var.resourcegroupName}"
}


resource "azurerm_container_registry" "acr" {
  name                = "${var.containerRegistryName}${random_integer.sa_num.result}"
  resource_group_name = "${var.resourcegroupName}"
  location            = "${var.location}"
  sku                 = "${var.containerRegistrySku}"
  admin_enabled       = true
}
