resource "azurerm_app_service" "appservice" {
  name                = "${var.AppServiceName}"
  location            = "${var.location}"
  resource_group_name = "${var.resourcegroupName}"
  app_service_plan_id = "${var.AppServicePlanId}"

  site_config {
    linux_fx_version = "DOCKER|${var.ACRLoginServer}/sonarqube:v1"
  }
}
