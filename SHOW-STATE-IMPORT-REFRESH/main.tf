terraform {
  required_version = ">=1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "racsilvstorageaccount"
    container_name       = "container-terraform-state"
    key                  = "commands/terraform.tfstate"
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "racesilv"
      managed-by = "terraform"
    }
  }
}