module "resource" {
  source = "../../modules/azurerm_resource_group"
  rg     = var.rg
}

module "vnet" {
  source              = "../../modules/azurerm_virtual_network"
  depends_on          = [module.resource]
  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  subnets             = var.subnets
}
