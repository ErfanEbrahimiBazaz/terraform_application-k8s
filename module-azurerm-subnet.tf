module "erf_aks_subnet" {
  source     = "C:/Users/path_to_module/TF-Modules/aks/tf-module-azurerm-subnet"
  depends_on = [module.erf_rg]
  subnets    = var.subnets
  resource_group_name  = module.erf_rg.name
  virtual_network_name = module.erf_azurerm_virtual_network.virtual_network_name
}