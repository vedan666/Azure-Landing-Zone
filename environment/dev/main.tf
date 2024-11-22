module "resource" {
  source = "../../Modules/ResourceGroup"
  rg_map = var.rg_map
}

module "vnet" {
  source = "../../Modules/Vnet"
  vnet_map = var.vnet_map
  depends_on = [ module.resource ]
}

module "subnet" {
  source = "../../Modules/Subnet"
  subnet_map = var.subnet_map
  depends_on = [ module.vnet ]
}

module "vm" {
  source = "../../Modules/Vm"
  vm_map = var.vm_map
  depends_on = [ module.subnet , module.resource ]
}

module "pip" {
  source = "../../Modules/Public_ip"
  pip_map = var.pip_map
  depends_on = [ module.vm ]
}

module "bastion" {
  source = "../../Modules/Bastion"
  bastion_map = var.bastion_map
  depends_on = [ module.vm , module.pip]
}