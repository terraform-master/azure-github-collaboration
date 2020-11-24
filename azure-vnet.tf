provider "azurerm" {
  version = "~> 2.1"
  features {}
}

resource "azurerm_resource_group" "rg" {
    name            = var.rgname
    location        = var.location

    tags = {
        environment = "Terraform Demo"
    }
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["172.16.0.0/16"]
}
