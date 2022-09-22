resource "azurerm_resource_group" "resource_group" {
  for_each = var.resource_groups_config != null ? var.resource_groups_config : {}

  name     = each.key
  location = each.value.location
  tags     = merge(var.extra_tags, local.shared_tags)
}
