# Rg configuration
rg = {
  rg1 = {
    name     = "rg-IOT-dev-cind"
    location = "centralindia"
  }
}

# VNet configuration
vnet_name           = "vnet-IOT-dev-cind"
location            = "centralindia"
resource_group_name = "rg-IOT-dev-cind"
address_space       = ["10.0.0.0/16"]

# Subnet configurations
subnets = {
  frontend = {
    name           = "frontend-subnet"
    address_prefix = "10.0.1.0/24"
  }
  backend = {
    name           = "backend-subnet"
    address_prefix = "10.0.2.0/24"
  }
}
