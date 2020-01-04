resource "null_resource" "post-config" {
  depends_on = [azurerm_storage_container.ct]

  provisioner "local-exec" {
      command = <<EOT
echo 'storage_account_name = "${azurerm_storage_account.sa.name}"' >> backend-config.txt
echo 'container_name = "terraform-state"' >> backend-config.txt
echo 'key = "terraform.tfstate"' >> backend-config.txt
echo 'sas_token = "${data.azurerm_storage_account_sas.state.sas}"' >> backend-config.txt
EOT
  }
}
