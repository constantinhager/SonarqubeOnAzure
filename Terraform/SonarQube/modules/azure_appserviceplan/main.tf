resource "azurerm_app_service_plan" "appserviceplan" {
  name                = "${var.AppServicePlanName}"
  location            = "${var.location}"
  resource_group_name = "${var.resourcegroupName}"
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "F1"
  }
}
