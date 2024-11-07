variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "location" {
  description = "Azure region where VNet will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group where VNet will be created"
  type        = string
}

variable "address_space" {
  description = "The address space for the Virtual Network"
  type        = list(string)
}

variable "subnets" {
  description = "Map of subnets to create, each with a name and address prefix"
  type = map(object({
    name              = string
    address_prefix    = string
  }))
}
