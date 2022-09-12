terraform {
  required_version = ">= 1.0.1"
  required_providers {
    azurerm = {
      version = "~> 3.21.1"
    }
  }
}

provider "azurerm" {
  features {}
}
module "resource_group" {
  source = "../"

  resource_group_settings = [
    {
      name = "demo1"
      location = "westus2"
    },
    {
      name = "demo2"
      location = "westus2"
    }
  ]
  # ---------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
