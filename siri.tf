resource "azurerm_resource_group" "siri_name1" {
  name     = var.siri_one
  location = "East US"
}

resource "azurerm_resource_group" "siri_name2" {
  name     = var.siri_two
  location = "East US"
}
