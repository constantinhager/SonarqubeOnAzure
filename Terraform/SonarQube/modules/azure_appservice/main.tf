resource "azurerm_app_service" "appservice" {
  name                = "${var.AppServiceName}"
  location            = "${var.location}"
  resource_group_name = "${var.resourcegroupName}"
  app_service_plan_id = "${var.AppServicePlanId}"

  site_config {
      linux_fx_version = "DOCKER|${data.azurerm_container_registry.containertest.login_server}/sonarqube:v1"
  }

  app_settings {
      "DOCKER_REGISTRY_SERVER_URL"          = "https://${var.ACRLoginServer}"
      "DOCKER_REGISTRY_SERVER_USERNAME"     = "${var.ACRUserName}"
      "DOCKER_REGISTRY_SERVER_PASSWORD"     = "${var.ACRPassword}"
      "sonar.jdbc.username" = "jdbc:sqlserver://${var.SQLServerFQDN};databaseName=${var.DBName}"
      "sonar.jdbc.password" = "${var.AdminUserName}",
      "sonar.jdbc.url" = "${var.AdminPassword}"
  }
}
