resource "azurerm_public_ip" "app_gateway_public_ip" {
  name                = "app-gateway-public-ip"
  location            = azurerm_resource_group.rg_network.location
  resource_group_name = azurerm_resource_group.rg_network.name
  allocation_method   = "Static"
  sku                 = "Standard"
}
