rg_map = {
  rg1 = {
    resource_group_name = "rg-dev-cind-01"
    location            = "centralindia"
  }
}
shared = {
  stg1 = {
    stg_name = "stgdevcind01"
    location = "centralindia"
    resource_group_name = "rg-dev-cind-01"
    blob_name = "tfstate"
  }
}
vnet_map = {
  vnet1 = {
    virtual_network_name = "vnet-dev-sandbox-cind-01"
    resource_group_name  = "rg-dev-cind-01"
    location             = "centralindia"
    address_space        = ["10.0.0.0/16"]
  }
}

subnet_map = {
  subnet1 = {
    subnet_name          = "subnet-dev-sandbox-cind-01"
    resource_group_name  = "rg-dev-cind-01"
    virtual_network_name = "vnet-dev-sandbox-cind-01"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name          = "subnet-dev-sandbox-cind-02"
    resource_group_name  = "rg-dev-cind-01"
    virtual_network_name = "vnet-dev-sandbox-cind-01"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    subnet_name          = "AzureBastionSubnet"
    resource_group_name  = "rg-dev-cind-01"
    virtual_network_name = "vnet-dev-sandbox-cind-01"
    address_prefixes     = ["10.0.3.0/26"]
  }
}

vm_map = {
  vm1 = {
    subnet_name          = "subnet-dev-sandbox-cind-01"
    virtual_network_name = "vnet-dev-sandbox-cind-01"
    nic_name             = "nic-dev-sandbox-cind-01"
    location             = "centralindia"
    resource_group_name  = "rg-dev-cind-01"
    vm_name              = "vm-dev-sandbox-cind-01"
  }
  vm2 = {
    subnet_name          = "subnet-dev-sandbox-cind-02"
    virtual_network_name = "vnet-dev-sandbox-cind-01"
    nic_name             = "nic-dev-sandbox-cind-02"
    location             = "centralindia"
    resource_group_name  = "rg-dev-cind-01"
    vm_name              = "vm-dev-sandbox-cind-02"
  }
}

pip_map = {
  pip1 = {
    pip_name            = "pip-dev-bastion-cind-01"
    location            = "centralindia"
    resource_group_name = "rg-dev-cind-01"
  }
}

bastion_map = {
  bastion1 = {
    bastion_name         = "bastion-dev-sandbox-cind-01"
    location             = "centralindia"
    resource_group_name  = "rg-dev-cind-01"
    subnet_name          = "AzureBastionSubnet"
    virtual_network_name = "vnet-dev-sandbox-cind-01"
    pip_name             = "pip-dev-bastion-cind-01"
  }
}
