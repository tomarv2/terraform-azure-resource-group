output "resource_group_id" {
  description = "Id of the Resource group"
  value       = [for rg in azurerm_resource_group.resource_group : rg.id]
}

output "resource_group_name" {
  description = "Name of the Resource group"
  value       = [for rg in azurerm_resource_group.resource_group : rg.name]
}
