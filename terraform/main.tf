# main.tf

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# Reference AKS Module
module "aks" {
  source              = "./aks"  # Path to the AKS module directory
  resource_group_name = var.resource_group_name
  location            = var.location
  aks_cluster_name    = var.aks_cluster_name
  node_count          = var.node_count
  vm_size             = var.vm_size
  autoscaler_min_count = var.autoscaler_min_count
  autoscaler_max_count = var.autoscaler_max_count
}

# Reference Network Module
module "network" {
  source              = "./network"  # Path to the network module directory
  location            = var.location
  resource_group_name = var.network_resource_group
}

# Reference Key Vault Module
module "key_vault" {
  source              = "./key_vault"  # Path to the Key Vault module directory
  location            = var.location
  resource_group_name = var.key_vault_resource_group
}

