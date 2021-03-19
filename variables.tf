variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
}

variable "rg_location" {
  description = "Resource Group region"
  default     = "eastus"
}

variable "add_resourcegroup" {
  description = "feature flag, true or false"
  default     = true
  type        = bool
}

variable "subscription_id" {}

variable "client_id" {}

variable "client_secret" {}

variable "tenant_id" {}

variable "rg_name" {
  description = "Resource Group name"
  default     = null
}