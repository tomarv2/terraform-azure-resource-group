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

  resource_groups_config = {
    "cloud-custodian" = {
      location = "westus2"
    }
  }
  # ---------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
