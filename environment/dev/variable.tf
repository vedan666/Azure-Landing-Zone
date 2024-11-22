variable "rg_map" {
  type = map(object(
    {
      name     = string
      location = string
    }
    )
  )
}
variable "shared" {
  type = map(any)
}
variable "vnet_map" {
  type = map(any)
}

variable "subnet_map" {
  type = map(any)
}

variable "vm_map" {
  type = map(any)
}

variable "pip_map" {
  type = map(any)
}

variable "bastion_map" {
  type = map(any)
}

variable "name" {
  type = string
}
