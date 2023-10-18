
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}
resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = "${azurerm_resource_group.resource_group.name}"
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type


}


