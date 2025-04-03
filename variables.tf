variable "cc_env_id" {
    description = "Environment id for the confluent cloud platt network"
}

variable "cc_network_location" {
    description = "Confluent Cloud Platt network & enterprise cluster location"
}

variable "azure_vnet_name" {
    description = "Azure Vnet name where the endpoint has to be created for PLATT access"
}

variable "azure_subnet_name" {
    description = "Azure Subnet name in the Vnet where the endpoint has to be created for PLATT access"
}

variable "azure_resource_group_name" {
    description = "Azure Resource group for the Vnet"
}

variable "azure_subscription_id" {
    description = "Azure subscription id"
}

variable "cc_api_key" {
    description = "Confluent cloud - cloud api key"
}

variable "cc_api_secret" {
    description = "Confluent cloud - cloud api secret"
}
