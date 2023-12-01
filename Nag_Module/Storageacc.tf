resource "azurerm_storage_account" "sa_1" {
  name                     = var.sa1_name
  resource_group_name      = azurerm_resource_group.rg_1.name
  location                 = azurerm_resource_group.rg_1.location
  account_tier             = var.account_tier
  account_replication_type = "LRS"
}
resource "azurerm_storage_account" "sa_2" {
  name                     = var.sa2_name
  resource_group_name      = azurerm_resource_group.rg_1.name
  location                 = azurerm_resource_group.rg_1.location
  account_tier             = var.account_tier
  account_replication_type = "LRS"
}