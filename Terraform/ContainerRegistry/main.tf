data "azurerm_container_registry" "acr_data" {
  name                = "${var.containerRegistryName}"
  resource_group_name = "${var.resourcegroupName}"
}

resource "azurerm_container_registry" "acr" {
  name                = "${var.containerRegistryName}"
  resource_group_name = "${var.resourcegroupName}"
  location            = "${var.location}"
  sku                 = "${var.containerRegistrySku}"
  admin_enabled       = true
}
