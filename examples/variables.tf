variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
  default     = "demo"
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
  default     = "resource_group"
}

variable "location" {
  description = " The location/region where the resource is created. Changing this forces a new resource to be created"
  default     = "westus2"
  type        = string
}