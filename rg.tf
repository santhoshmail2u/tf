resource "azurerm_resource_group" "name" {
  name     = var.rg-1-name
  location = "East US"
}

resource "azurerm_resource_group" "app_name" {
  name     = var.rg-2-name
  location = "East US"
}

resource "azurerm_resource_group" "manual_name" {
  name     = "manualRg"
  location = "East US"
}
