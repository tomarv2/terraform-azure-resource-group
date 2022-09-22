variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "resource_groups_config" {
  description = "Resource group configuration"
  type        = map(any)
}


variable "extra_tags" {
  description = "Additional tags to associate"
  type        = map(string)
  default     = {}
}