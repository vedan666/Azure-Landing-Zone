module "resource" {
  source = "../../Modules/azurerm_resource_group"
  rg_map = var.rg_map
}

module "vnet" {
  source = "../../Modules/azurerm_virtual_network"
  vnet_map = var.vnet_map
  depends_on = [ module.resource ]
}

module "subnet" {
  source = "../../Modules/azurerm_subnet"
  subnet_map = var.subnet_map
  depends_on = [ module.vnet ]
}

module "vm" {
  source = "../../Modules/azurerm_linux_virtual_machine"
  vm_map = var.vm_map
  depends_on = [ module.subnet , module.resource ]
}

module "pip" {
  source = "../../Modules/azurerm_public_ip"
  pip_map = var.pip_map
  depends_on = [ module.vm ]
}

module "bastion" {
  source = "../../Modules/azurerm_bastion_host"
  bastion_map = var.bastion_map
  depends_on = [ module.vm , module.pip]
}