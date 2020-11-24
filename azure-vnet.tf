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
  address_space       = [var.vnet_addr_space]
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet1name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet1_addr_space]
}