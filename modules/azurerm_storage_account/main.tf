resource "azurerm_storage_account" "stg" {
    for_each = var.stg
    name = each.value.stg_name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    account_tier = "Standard"
    account_replication_type = "LRS"
}
resource "azurerm_storage_container" "blob" {
  for_each              = var.blob
  name                  = each.value.blob_name
  storage_account_name  = each.value.stg_name
  container_access_type = "private"
}
