terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.116.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}

provider "azurerm" {
  features {}
}

