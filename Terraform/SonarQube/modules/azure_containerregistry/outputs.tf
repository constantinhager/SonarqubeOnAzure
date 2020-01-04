output "login_server" {
  value = "${data.azurerm_container_registry.acr_data.login_server}"
}

output "admin_username" {
  value = "${data.azurerm_container_registry.acr_data.admin_username}"
}

output "admin_password" {
  value = "${data.azurerm_container_registry.acr_data.admin_password}"
}
