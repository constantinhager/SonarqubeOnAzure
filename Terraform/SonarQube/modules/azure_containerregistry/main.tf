resource "azurerm_container_registry" "acr" {
  name                = "${var.containerRegistryName}"
  resource_group_name = "${var.resourcegroupName}"
  location            = "${var.location}"
  sku                 = "${var.containerRegistrySku}"
}
