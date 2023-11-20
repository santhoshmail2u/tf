provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  backend "azurerm" {
      resource_group_name  = "preferredlocation"
      storage_account_name = "sarmatfstatestorage"
      container_name       = "mycontainer"
      key                  = "terraform.tfstate"
  }
}
