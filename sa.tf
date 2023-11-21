resource "azurerm_storage_account" "appSA" {
  name                     = "santhoshappstorage"
  resource_group_name      = data.azurerm_resource_group.example.name
  location                 = data.azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_account" "name" {
  name                     = var.app_sa["name"]
  resource_group_name      = var.app_sa["rg_name"]
  location                 = var.app_sa["lcn"]
  account_tier             = var.app_sa["a_t"]
  account_replication_type = var.app_sa["a_r_t"]
}

resource "azurerm_storage_container" "name" {
  count = length(var.sa_containers)

  name                 = var.sa_containers[count.index]
  storage_account_name = azurerm_storage_account.name.name
}


resource "azurerm_storage_account" "multi_sa" {
  for_each                 = var.multiple_sa
  name                     = each.value.name
  resource_group_name      = each.value.rg_name
  location                 = each.value.lcn
  account_tier             = each.value.a_t
  account_replication_type = each.value.a_r_t
}
