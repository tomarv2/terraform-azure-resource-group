## resource group module usage:

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| client\_id | n/a | `any` | n/a | yes |
| client\_secret | n/a | `any` | n/a | yes |
| email | Email address to be used to for tagging. | `any` | n/a | yes |
| prjid | Name of the project/stack e.g: mystack, nifieks. Should not be changed after running 'tf apply'. | `any` | n/a | yes |
| rg\_region | Resource Group region | `string` | `"eastus"` | no |
| subscription\_id | n/a | `any` | n/a | yes |
| teamid | Name of the team or group e.g. devops, dataengineering. Should not be changed after running 'tf apply'. | `any` | n/a | yes |
| tenant\_id | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| resourcegroup\_id | resource group id. |
| resourcegroup\_name | resource group name. |
