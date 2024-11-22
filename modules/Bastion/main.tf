resource "azurerm_bastion_host" "bastion" {
    for_each = var.bastion_map
  name                = each.value.bastion_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.subnet[each.key].id
    public_ip_address_id = data.azurerm_public_ip.pip[each.key].id
  }
}