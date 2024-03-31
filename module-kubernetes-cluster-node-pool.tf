module "erf_kubernetes_cluster_node_pool" {
  source                = "C:/Users/path_to_module/TF-Modules/aks/tf-module-azurerm-kubernetes-cluster-node-pool"
  depends_on            = [module.erf_azurerm_virtual_network, module.erf_aks_subnet]
  node_pools            = local.additional_node_pools
  kubernetes_cluster_id = module.erf_kubernetes_cluster.id
  environment           = var.env
}