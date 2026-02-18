terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "racsilvstorageaccount"
    container_name       = "container-terraform-state"
    key                  = "terraform-console/terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}