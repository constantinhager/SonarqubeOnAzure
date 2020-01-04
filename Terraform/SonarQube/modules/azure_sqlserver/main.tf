resource "azurerm_sql_server" "sqlserver" {
  name                         = "${var.SQLServerName}"
  resource_group_name          = "${var.resourcegroupName}"
  location                     = "${var.location}"
  version                      = "12.0"
  administrator_login          = "${var.AdminUserName}"
  administrator_login_password = "${var.AdminPassword}"
}
