variable "rg" {
  description = "A map of Resource Groups to create, where key is the RG identifier and value contains name and location."
  type = map(object(
    {
      name     = string
      location = string
    }
    )
  )
}

# Define the name of the Virtual Network
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

# Define the location/region for the Virtual Network
variable "location" {
  description = "Azure region where VNet will be created"
  type        = string
}

# Define the name of the Resource Group where the VNet will be created
variable "resource_group_name" {
  description = "Name of the Resource Group where VNet will be created"
  type        = string
}

# Define the address space for the Virtual Network
variable "address_space" {
  description = "The address space for the Virtual Network"
  type        = list(string)
}

# Define the subnets as a map, where each subnet has a name, address prefix, and optional security group ID
variable "subnets" {
  description = "Map of subnets to create, each with a name, address prefix, and optional NSG ID"
  type = map(object({
    name              = string
    address_prefixes  = string
    security_group_id = optional(string, null)
  }))
}