resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.aks_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin   = "azure"
    load_balancer_sku = "standard"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "aks_node_pool" {
  name                   = "autoscale"
  kubernetes_cluster_id  = azurerm_kubernetes_cluster.aks_cluster.id
  vm_size                = var.vm_size
  min_count              = var.autoscaler_min_count
  max_count              = var.autoscaler_max_count
  enable_auto_scaling    = true
}
