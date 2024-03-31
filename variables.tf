# general
variable "application" {
  description = "Applicaton name"
  type        = string
}
variable "env" {
  description = "Choose between dev, qa or prod"
  type        = string
}

# resource group
variable "rg-location" {
  description = "Location of the RG"
  type        = string
}

# Kubernetes cluster
variable "kubernetes_cluster_location" {
  description = "Kubernetes cluster location"
  type        = string
}

variable "kubernetes_dns_prefix" {
  description = "DNS prefix"
  type        = string
}

variable "kubernetes_identity" {
  description = "(Optional) An identity block. One of either identity or service_principal must be specified."
  type        = string
}

variable "temporary_name_for_rotation" {
  description = "(Optional) Specifies the name of the temporary node pool used to cycle the default node pool for VM resizing."
  type        = string
}

# Kubernetes cluster node pool
variable "kubernetes_node_pool_name" {
  description = "(Required) The name which should be used for the default Kubernetes Node Pool."
  type        = string
}

variable "kubernetes_node_count" {
  description = "Number of VMs in the kubernetes cluster node pool."
  type        = number
}

variable "kubernetes_node_pool_vm_size" {
  description = "VM size of the kubernetes cluster node pool."
  type        = string
}

# Vnet
variable "vnet_name" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}

variable "address_space" {
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
  type        = list(string)
}

variable "location" {
  description = "(Required) The location/region where the virtual network is created. Changing this forces a new resource to be created."
  type        = string
}


variable "vnet_environment" {
  description = "Environment Tag"
  type        = string
}

variable "subnets" {
  description = "Map of subnets"
  type = map(object({
    name             = string
    address_prefixes = list(string)
  }))
}

