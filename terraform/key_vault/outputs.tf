output "key_vault_name" {
  description = "The name of the Azure Key Vault"
  value       = azurerm_key_vault.aks_keyvault.name
}

output "ssl_certificate_name" {
  description = "The name of the SSL certificate in Key Vault"
  value       = azurerm_key_vault_certificate.ssl_cert.name
}

output "ssl_certificate_id" {
  description = "The ID of the SSL certificate in Key Vault"
  value       = azurerm_key_vault_certificate.ssl_cert.id
}
