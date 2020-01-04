resource "azurerm_app_service_plan" "appserviceplan" {
  name                = "${var.AppServicePlanName}"
  location            = "${var.location}"
  resource_group_name = "${var.resourcegroupName}"
  kind                = "Linux"

  sku {
    tier = "Standard"
    size = "F1"
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = false
    "DOCKER_REGISTRY_SERVER_URL"          = "https://${var.ACRLoginServer}"
    "DOCKER_REGISTRY_SERVER_USERNAME"     = "${var.ACRUserName}"
    "DOCKER_REGISTRY_SERVER_PASSWORD"     = "${var.ACRPassword}"
    "sonar.jdbc.username"                 = "jdbc:sqlserver://${var.SQLServerFQDN};databaseName=${var.DBName}"
    "sonar.jdbc.password"                 = "${var.AdminUserName}"
    "sonar.jdbc.url"                      = "${var.AdminPassword}"
  }
}
