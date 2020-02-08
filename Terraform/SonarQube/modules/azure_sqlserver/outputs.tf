output "sqlserverid" {
  value = azurerm_sql_server.sqlserver.id
}

output "sqlserverfqdn" {
  value = azurerm_sql_server.sqlserver.fully_qualified_domain_name
}
