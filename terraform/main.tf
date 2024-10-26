# main.tf

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# AKS Module
module "aks" {
  source                 = "./aks"
  location               = var.location
  resource_group_name    = var.resource_group_name
  aks_cluster_name       = var.aks_cluster_name
  dns_prefix             = var.dns_prefix
  node_count             = var.node_count
  vm_size                = var.vm_size
  autoscaler_min_count   = var.autoscaler_min_count
  autoscaler_max_count   = var.autoscaler_max_count
}

# Network Module
module "network" {
  source                 = "./network"
  location               = var.location
  resource_group_name    = var.resource_group_name
}

# Key Vault Module
module "key_vault" {
  source                 = "./key_vault"
  location               = var.location
  resource_group_name    = var.resource_group_name
}

