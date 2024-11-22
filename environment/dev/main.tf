module "resource" {
  source = "../../modules/azurerm_resource_group"
  rg_map = var.rg_map
}
module "stg" {
  depends_on = [module.resource]
  source     = "../../modules/azurerm_storage_account"
  stg        = var.shared
  blob       = var.shared
}

module "vnet" {
  source     = "../../modules/azurerm_virtual_network"
  vnet_map   = var.vnet_map
  depends_on = [module.resource]
}

module "subnet" {
  source     = "../../modules/azurerm_subnet"
  subnet_map = var.subnet_map
  depends_on = [module.vnet]
}

module "vm" {
  source     = "../../modules/azurerm_linux_virtual_machine"
  vm_map     = var.vm_map
  depends_on = [module.subnet, module.resource]
}

module "pip" {
  source     = "../../modules/azurerm_public_ip"
  pip_map    = var.pip_map
  depends_on = [module.vm]
}

module "bastion" {
  source      = "../../modules/azurerm_bastion_host"
  bastion_map = var.bastion_map
  depends_on  = [module.vm, module.pip]
}
