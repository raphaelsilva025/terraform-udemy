terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "racsilvstorageaccount"
    container_name       = "container-terraform-state"
    key                  = "for-expression/terraform.tfstate"
  }
}

provider "azurerm" {
  features {
  }
}