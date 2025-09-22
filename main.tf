terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 4.0"
        }
    }
    required_version = ">= 1.0.0"
    
    backend "azurerm" {
      resource_group_name  = "sunday25augrg"
      storage_account_name  = "sunday25augstg1"
      container_name        = "sunday25augcntr"
      key                   = "sohitterraform.tfstate"
    }

}

provider "azurerm" {
  features {}
  subscription_id = "418b0f60-e8d3-4b5e-af5d-2f7154274590"
  
}

resource "azurerm_resource_group" "practice22" {
  name     = "practice22"
  location = "West Europe"
}