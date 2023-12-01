resource "azurerm_storage_container" "con1" {
  count                = length(var.sa_con1)
  name                 = var.sa_con1[count.index]
  storage_account_name = azurerm_storage_account.sa_1
}
resource "azurerm_storage_container" "con2" {
  count                = length(var.sa_con2)
  name                 = var.sa_con2[count.index]
  storage_account_name = azurerm_storage_account.sa_2
}