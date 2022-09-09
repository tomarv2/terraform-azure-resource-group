output "resource_group_id" {
  description = "Resource Group id"
  value       = azurerm_resource_group.resource_group.*.id
}

output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.resource_group.*.name
}
