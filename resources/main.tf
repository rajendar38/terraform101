provider "azurerm" {
  features {}
}

module "storage_account" {
  source = "C:\\Users\\Rajendar Talatam\\Desktop\\terraform\\work2"

  storage_account_name  = "mystoragetestoct"
  resource_group_name   = "myresourcegroup"
  location              = "eastus"
  account_tier          = "Standard"
 // environment           = "dev"
}

output "storage_account_name" {
  value = module.storage_account.storage_account_name
}

output "storage_account_id" {
  value = module.storage_account.storage_account_id
}