variable "location" {
  description = "Azure location for all resources"
  default     = "Australia East"
}

variable "resource_group_name" {
  description = "Resource group name for the AKS cluster"
  default     = "rg-aks-cluster"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "aks-sample-cluster"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
  default     = "aks-sample"
}

variable "node_count" {
  description = "Initial number of nodes in the AKS cluster"
  type        = number
  default     = 3
}

variable "vm_size" {
  description = "The size of the virtual machines in the AKS cluster"
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

variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
  default     = "aks-keyvault"
}

variable "key_vault_resource_group_name" {
  description = "Resource group for the Key Vault"
  type        = string
  default     = "rg-aks-keyvault"
}

variable "ssl_certificate_name" {
  description = "The name of the SSL certificate in Key Vault"
  type        = string
  default     = "ssl-cert"
}

variable "ssl_certificate_subject" {
  description = "The subject for the SSL certificate"
  type        = string
  default     = "CN=yourdomain.com"
}

variable "ssl_certificate_validity_in_months" {
  description = "Validity period for the SSL certificate in months"
  type        = number
  default     = 12
}
