# Root variables.tf

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "location" {
  description = "Azure location for resources"
  type        = string
  default     = "Australia East"
}

variable "resource_group_name" {
  description = "Resource group name for resources"
  type        = string
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Initial number of nodes in the AKS cluster"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "Size of the virtual machines in the AKS cluster"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "autoscaler_min_count" {
  description = "Minimum number of nodes in the AKS autoscaler"
  type        = number
  default     = 1
}

variable "autoscaler_max_count" {
  description = "Maximum number of nodes in the AKS autoscaler"
  type        = number
  default     = 5
}
