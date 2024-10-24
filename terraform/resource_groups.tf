provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_aks" {
  name     = "rg-aks-cluster"
  location = var.location
}

resource "azurerm_resource_group" "rg_network" {
  name     = "rg-aks-network"
  location = var.location
}

resource "azurerm_resource_group" "rg_keyvault" {
  name     = "rg-aks-keyvault"
  location = var.location
}
