# name = "poc"
rg-location = "westeurope"
env         = "qa"
application = "dl"

# kubernetes cluster
kubernetes_dns_prefix       = "erf-aks-dns"
kubernetes_identity         = "SystemAssigned"
kubernetes_cluster_location = "westeurope"

#kubernetes cluster node pool
kubernetes_node_pool_name    = "aksnpdefault" #contain only lowercase letters and numbers and be between 1 and 12 characters in length
kubernetes_node_count        = 2
kubernetes_node_pool_vm_size = "Standard_D2_v2" #"Standard_EC2as_v5" #
temporary_name_for_rotation  = "backupnp"

# Vnet
vnet_name        = "vnet-k8s"
location         = "westeurope"
address_space    = ["10.0.0.0/16"]
dns_servers      = ["10.0.0.4", "10.0.0.5"]
vnet_environment = "development"

subnets = {
  subnet0 = {
    name             = "defaultpool"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet1 = {
    name             = "aks_nodepool1"
    address_prefixes = ["10.0.2.0/24"]
  }
  subnet2 = {
    name             = "aks_nodepool2"
    address_prefixes = ["10.0.3.0/24"]
  }
}  