resource "azurerm_public_ip" "app_gateway_public_ip" {
  name                = "app-gateway-public-ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}
