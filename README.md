<p align="center">
    <a href="https://www.apache.org/licenses/LICENSE-2.0" alt="license">
        <img src="https://img.shields.io/github/license/tomarv2/terraform-azure-resource-group" /></a>
    <a href="https://github.com/tomarv2/terraform-azure-resource-group/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-azure-resource-group" /></a>
    <a href="https://github.com/tomarv2/terraform-azure-resource-group/pulse" alt="Activity">
        <img src="https://img.shields.io/github/commit-activity/m/tomarv2/terraform-azure-resource-group" /></a>
    <a href="https://stackoverflow.com/users/6679867/tomarv2" alt="Stack Exchange reputation">
        <img src="https://img.shields.io/stackexchange/stackoverflow/r/6679867"></a>
    <a href="https://discord.gg/XH975bzN" alt="chat on Discord">
        <img src="https://img.shields.io/discord/813961944443912223?logo=discord"></a>
    <a href="https://twitter.com/intent/follow?screen_name=varuntomar2019" alt="follow on Twitter">
        <img src="https://img.shields.io/twitter/follow/varuntomar2019?style=social&logo=twitter"></a>
</p>

# Terraform module for Azure Resource Group

## Versions

- Module tested for Terraform 0.14.
- Azure provider version [2.48.0](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
- `main` branch: Provider versions not pinned to keep up with Terraform releases
- `tags` releases: Tags are pinned with versions (use latest 
  <a href="https://github.com/tomarv2/terraform-azure-resource-group/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-azure-resource-group" /></a> 
  in your releases)

**NOTE:** 

- Read more on [tfremote](https://github.com/tomarv2/tfremote)

## Usage

Recommended method:

- Create python 3.6+ virtual environment 
```
python3 -m venv <venv name>
```

- Install package:
```
pip install tfremote
```

- Set below environment variables:
```
export TF_AZURE_STORAGE_ACCOUNT=tfstatexxxxx # Output of remote_state.sh
export TF_AZURE_CONTAINER=tfstate # Output of remote_state.sh
export ARM_ACCESS_KEY=xxxxxxxxxx # Output of remote_state.sh
```  

- Update `examples/main.tf`

- Run and verify the output before deploying:
```
tf -cloud azure plan -var-file <path to .tfvars file> -var "subscription_id=<>" \
-var "client_id=<>" -var "client_secret=<>" -var "tenant_id=<>"
```

- Run below to deploy:
```
tf -cloud azure apply -var-file <path to .tfvars file> -var "subscription_id=<>" \
-var "client_id=<>" -var "client_secret=<>" -var "tenant_id=<>"
```

- Run below to destroy:
```
tf -cloud azure destroy -var-file <path to .tfvars file> -var "subscription_id=<>" \
-var "client_id=<>" -var "client_secret=<>" -var "tenant_id=<>"
```

> ❗️ **Important** - Two variables are required for using `tf` package:
>
> - teamid
> - prjid
>
> These variables are required to set backend path in the remote storage.
> Variables can be defined using:
>
> - As `inline variables` e.g.: `-var='teamid=demo-team' -var='prjid=demo-project'`
> - Inside `.tfvars` file e.g.: `-var-file=<tfvars file location> `
>
> For more information refer to [Terraform documentation](https://www.terraform.io/docs/language/values/variables.html)

```
module "resourcegroup" {
  source = "../"

  email           = "demo@demo.com"
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

  add_resourcegroup = true
  rg_name           = "demo-rg"
  # ---------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
```

Please refer to examples directory [link](examples) for references.
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
