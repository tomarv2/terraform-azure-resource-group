output "resource_group_id" {
  description = "Resource Group id"
  value       = azurerm_resource_group.resource_group.*.id
}

output "resource_group_name" {
  description = "Resource Group name"
  value       = azurerm_resource_group.resource_group.*.name
}
