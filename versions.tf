terraform {
  required_version = ">= 1.0.1"
  required_providers {
    azurerm = {
      version = ">= 2.90"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
