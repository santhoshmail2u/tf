resource "azurerm_resource_group" "nagu_name" {
  name     = var.nagu
  location = "East US"
}

variable "nagu" {
  type    = string
  default = "naga_rg"
}