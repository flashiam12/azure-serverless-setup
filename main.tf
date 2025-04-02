terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    confluent = {
      source  = "confluentinc/confluent"
      version = "2.24.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.azure_subscription_id
}

provider "confluent" {
  cloud_api_key = var.cc_api_key
  cloud_api_secret = var.cc_api_secret
}

data "azurerm_virtual_network" "default" {
  name                = var.azure_vnet_name
  resource_group_name = var.azure_resource_group_name
}

data "azurerm_subnet" "default" {
  name                 = var.azure_subnet_name
  virtual_network_name = data.azurerm_virtual_network.default.name
  resource_group_name  = data.azurerm_resource_group.default.name
}

data "azurerm_resource_group" "default" {
  name = var.azure_resource_group_name
}

data "confluent_environment" "default" {
  id = var.cc_env_id
}