resource "azurerm_resource_group" "siri_name" {
  count = length(var.siri)
  name     = var.siri[count.index]
  location = "East US"
}

