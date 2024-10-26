output "app_gateway_public_ip" {
  description = "The public IP address for the Application Gateway"
  value       = azurerm_public_ip.app_gateway_public_ip.ip_address
}
