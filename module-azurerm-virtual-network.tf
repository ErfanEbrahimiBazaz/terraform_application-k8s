module "erf_azurerm_virtual_network" {
  source              = "C:/Users/path_to_module/TF-Modules/aks/tf-module-azurerm-virtual-network"
  depends_on          = [module.erf_rg]
  application         = var.application
  name                = var.vnet_name
  location            = var.location
  resource_group_name = module.erf_rg.name
  address_space       = var.address_space
  environment = var.vnet_environment
}