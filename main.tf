terraform {
  required_version            = ">= 0.14"
  required_providers {
    azurerm = {
      version                     = "~> 2.48"
    }
  }
}

provider "azurerm" {
  features {}
  # NOTE:  I noticed an issue with getting access to Azure even after setting env.
  # variables, adding it to mitigate auth issues.
  subscription_id             = var.subscription_id
  client_id                   = var.client_id
  client_secret               = var.client_secret
  tenant_id                   = var.tenant_id
}

locals {
  shared_tags = map(
      "Name", "${var.teamid}-${var.prjid}",
      "Owner", var.email,
      "Team", var.teamid,
      "Project", var.prjid

  )
}