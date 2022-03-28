variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "location" {
  description = " The location/region where the resource is created. Changing this forces a new resource to be created"
  default     = "westus2"
  type        = string
}

variable "deploy_resource_group" {
  description = "feature flag to deploy this resource or not"
  default     = true
  type        = bool
}

variable "resource_group_name" {
  description = "Name of the resource group"
  default     = null
  type        = string
}
