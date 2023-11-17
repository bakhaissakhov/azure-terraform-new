terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }

  # backend "azurerm" {
  #   resource_group_name = "rg-sp-terraform"
  #   storage_account_name = "mytfstatetest"
  #   container_name = "my-container"
  #   key = "tfstate-dev"
  # }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  # tenant_id       = var.tenant_id
  # subscription_id = var.subscription_id
  # client_id       = var.client_id
  # client_secret   = var.client_secret
}


resource "azurerm_elastic_cloud_elasticsearch" "cloud_elasticsearch" {
  # (Other properties like name, location, resource group name, etc.)
  name                        = "test-es-xxx"
  resource_group_name         = var.rg_name
  location                    = "westus2"
  sku_name                    = "ess-consumption-2024_Monthly@TIDgmz7xq9ge3py"
  elastic_cloud_email_address = "bakha87@gmail.com"
  # monitoring_enabled = false
  tags = {
    "Environment" = "dev"
    "Project"     = "example"
    # Add other tags as needed
  }
}
