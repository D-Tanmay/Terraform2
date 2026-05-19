terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "~> 4.8.0"
    }
    
  }

  required_version = ">=1.9.0"
}

provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "exmple" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "tanmaystorageaccount"
  resource_group_name      = azurerm_resource_group.exmple.name
  location                 = azurerm_resource_group.exmple.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
  tags = {
    environment = "staging"
  }
}

