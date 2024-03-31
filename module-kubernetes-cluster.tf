module "erf_kubernetes_cluster" {
  source              = "C:/Users/path_to_modules/TF-Modules/aks/tf-module-azurerm-kubernetes-cluster"
  depends_on          = [module.erf_azurerm_virtual_network, module.erf_aks_subnet]
  location            = var.kubernetes_cluster_location
  application         = var.application
  env                 = var.env
  resource_group_name = module.erf_rg.name
  dns_prefix          = var.kubernetes_dns_prefix
  identity            = var.kubernetes_identity
  node_pool_name      = var.kubernetes_node_pool_name
  node_count          = var.kubernetes_node_count
  vm_size             = var.kubernetes_node_pool_vm_size
  vnet_default_subnet_id      = module.erf_aks_subnet.subnet_ids["subnet0"] ## a good reason to break the state into different files.
  vnet_id                     = module.erf_azurerm_virtual_network.virtual_network_id
  temporary_name_for_rotation = var.temporary_name_for_rotation
}

