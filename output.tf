output "resourcegroup_id" {
  description = "resource group id."
  value       = azurerm_resource_group.resourcegroup.*.id
}

output "resourcegroup_name" {
  description = "resource group name."
  value       = azurerm_resource_group.resourcegroup.*.name
}
