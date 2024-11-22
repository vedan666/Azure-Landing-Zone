data "azurerm_subnet" "subnet" {
  for_each             = var.vm_map
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_key_vault" "kv" {
  name                = "kv-dev-sandbox-cind-01"
  resource_group_name = "rg-dev-kv-cind"
}

data "azurerm_key_vault_secret" "username" {
  name         = "vmusername"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "password" {
  name         = "vmpassword"
  key_vault_id = data.azurerm_key_vault.kv.id
}