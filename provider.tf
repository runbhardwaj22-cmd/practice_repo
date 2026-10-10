terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "backendforcount"
    storage_account_name = "backendstorage456"
    container_name       = "backendcontainer"
    key                  = "count.tfstate"

  }
}

provider "azurerm" {
  features {}
}