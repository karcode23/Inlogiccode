resource "azurerm_key_vault" "aks_keyvault" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.key_vault_resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    permissions {
      secrets = ["get", "set", "delete"]
    }
  }
}

resource "azurerm_key_vault_certificate" "ssl_cert" {
  name         = var.ssl_certificate_name
  key_vault_id = azurerm_key_vault.aks_keyvault.id

  certificate_policy {
    issuer_parameters {
      name = "Self"
    }
    x509_certificate_properties {
      subject            = var.ssl_certificate_subject
      validity_in_months = var.ssl_certificate_validity_in_months
    }
  }
}
