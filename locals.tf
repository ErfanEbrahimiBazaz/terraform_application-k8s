locals {
  additional_node_pools = [
    {
      name                = "team1np"
      node_count          = 1
      vm_size             = "Standard_D2_v2"
      vnet_subnet_id      = module.erf_aks_subnet.subnet_ids["subnet1"] # null # 
      min_count           = 1
      max_count           = 2
      enable_auto_scaling = true
    },
    {
      name                = "team2np"
      node_count          = 2
      vm_size             = "Standard_D2_v2"
      vnet_subnet_id      = module.erf_aks_subnet.subnet_ids["subnet2"] # null # 
      min_count           = 1
      max_count           = 2
      enable_auto_scaling = true
    }
  ]

}