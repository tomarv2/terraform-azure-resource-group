resource "azurerm_resource_group" "resource_group" {
  for_each = var.config

  name     = each.key
  location = each.value.location
  tags     = merge(var.extra_tags, local.shared_tags)
}
