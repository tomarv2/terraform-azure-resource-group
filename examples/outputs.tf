output "resource_group_id" {
  description = "Id of the Resource group"
  value       = module.resource_group.resource_group_id
}

output "resource_group_name" {
<<<<<<< HEAD:examples/outputs.tf
  description = "Name of the Resource group"
=======
  description = "Name of the resource group"
>>>>>>> 246f8799937f128a6d2f704c90389ae598fcc16d:examples/sample/output.tf
  value       = module.resource_group.resource_group_name
}
