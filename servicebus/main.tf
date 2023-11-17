terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "rg-sp-terraform"
    storage_account_name = "sandboxtfstate2023"
    container_name = "tfstate-container"
    key = "tfstate-sandbox"
  }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_servicebus_namespace" "example" {
  name                = "servicebus-sandbox-namespace-xxx"
  location            = var.ec-location
  resource_group_name = var.ec-rg
  sku                 = "Standard"

  tags = {
    source = "terraform"
  }
}