resource "azurerm_resource_group" "SonarQuberg" {
  name     = "${var.resourcegroupName}"
  location = "${var.location}"
}
