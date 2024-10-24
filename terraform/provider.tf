provider "azurerm" {
  features {}

  # If you're using a specific subscription, you can specify it like this:
  subscription_id = var.subscription_id
}

# Optional - data source to fetch the current client config (useful for Key Vault access)
data "azurerm_client_config" "current" {}
