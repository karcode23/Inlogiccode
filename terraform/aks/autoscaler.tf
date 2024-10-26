resource "azurerm_kubernetes_cluster_node_pool" "aks_node_pool" {
  name                  = "autoscale"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_cluster.id
  vm_size               = var.vm_size
  enable_auto_scaling   = true
  min_count             = var.autoscaler_min_count
  max_count             = var.autoscaler_max_count
  node_count            = var.node_count
}
