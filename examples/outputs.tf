output "resource_group_id" {
  description = "Id of the Resource group"
  value       = module.resource_group.resource_group_id
}

output "resource_group_name" {
  description = "Name of the Resource group"
  value       = module.resource_group.resource_group
}
