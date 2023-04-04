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

  config = {
    "<resource_group_name>" = {
      location = "westus2"
    }
  }
}
