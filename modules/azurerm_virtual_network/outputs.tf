output "vnet_id" {
  description = "The ID of the created Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "subnet_ids" {
  value = [for subnet in azurerm_virtual_network.vnet.subnet : subnet.id]
}


