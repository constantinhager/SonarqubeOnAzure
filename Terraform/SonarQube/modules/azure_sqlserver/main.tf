resource "azurerm_sql_server" "sqlserver" {
  name                         = "${var.SQLServerName}"
  resource_group_name          = "${var.resourcegroupName}"
  location                     = "${var.location}"
  version                      = "12.0"
  administrator_login          = "${var.AdminUserName}"
  administrator_login_password = "${var.AdminPassword}"
}

resource "azurerm_sql_firewall_rule" "sqlserverfirewallrule" {
  name                = "FWAllowTraffic"
  resource_group_name = "${var.resourcegroupName}"
  server_name         = "${azurerm_sql_server.sqlserver.name}"
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}

resource "azurerm_sql_database" "sqlserverdb" {
  name                             = "${var.DBName}"
  resource_group_name              = "${var.resourcegroupName}"
  location                         = "${var.location}"
  server_name                      = "${azurerm_sql_server.sqlserver.name}"
  max_size_bytes                   = 268435456000
  collation                        = "SQL_Latin1_General_CP1_CS_AS"
  edition                          = "Basic"
  requested_service_objective_name = "B"
}
