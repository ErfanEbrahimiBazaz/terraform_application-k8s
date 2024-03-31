module "erf_rg" {
  source      = "C:/Users/path_to_module/TF-Modules/aks/tf-module-azurerm-resource-group"
  location    = var.rg-location
  env         = var.env
  application = var.application
}
