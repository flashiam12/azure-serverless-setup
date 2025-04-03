<!-- BEGIN_TF_DOCS -->
# Azure Confluent cloud PLATT networking setup for Enterprise cluster

## Setup

```bash
az login
```

## Example usage 

```go
module "azure_cc" {
    src = "."
    cc_env_id = "env-vrv23p"
    azure_vnet_name = "sts-se-poc-networking"
    azure_subnet_name = "kubota-test-subnet"
    cc_network_location = "eastus"
    azure_resource_group_name = "sts-se-poc"
    azure_subscription_id = "54ff81a0-e7f6-4919-9053-4cdd1c5xxxxx"
    cc_api_key = "X72TAFU53Q7XXXXX"
    cc_api_secret = "v1m9wQ4FLfzZuR+p295DHk7/tfRvcVlsxxxxxxxxxxxxxxxxxxxxxxxxx"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.0.0 |
| <a name="requirement_confluent"></a> [confluent](#requirement\_confluent) | 2.24.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =3.0.0 |
| <a name="provider_confluent"></a> [confluent](#provider\_confluent) | 2.24.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_a_record.default](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/private_dns_a_record) | resource |
| [azurerm_private_dns_zone.default](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.default](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_endpoint.default](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/private_endpoint) | resource |
| [confluent_kafka_cluster.enterprise](https://registry.terraform.io/providers/confluentinc/confluent/2.24.0/docs/resources/kafka_cluster) | resource |
| [confluent_private_link_attachment.default](https://registry.terraform.io/providers/confluentinc/confluent/2.24.0/docs/resources/private_link_attachment) | resource |
| [confluent_private_link_attachment_connection.default](https://registry.terraform.io/providers/confluentinc/confluent/2.24.0/docs/resources/private_link_attachment_connection) | resource |
| [azurerm_resource_group.default](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/data-sources/resource_group) | data source |
| [azurerm_subnet.default](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.default](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/data-sources/virtual_network) | data source |
| [confluent_environment.default](https://registry.terraform.io/providers/confluentinc/confluent/2.24.0/docs/data-sources/environment) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_resource_group_name"></a> [azure\_resource\_group\_name](#input\_azure\_resource\_group\_name) | Azure Resource group for the Vnet | `any` | n/a | yes |
| <a name="input_azure_subnet_name"></a> [azure\_subnet\_name](#input\_azure\_subnet\_name) | Azure Subnet name in the Vnet where the endpoint has to be created for PLATT access | `any` | n/a | yes |
| <a name="input_azure_subscription_id"></a> [azure\_subscription\_id](#input\_azure\_subscription\_id) | Azure subscription id | `any` | n/a | yes |
| <a name="input_azure_vnet_name"></a> [azure\_vnet\_name](#input\_azure\_vnet\_name) | Azure Vnet name where the endpoint has to be created for PLATT access | `any` | n/a | yes |
| <a name="input_cc_api_key"></a> [cc\_api\_key](#input\_cc\_api\_key) | Confluent cloud - cloud api key | `any` | n/a | yes |
| <a name="input_cc_api_secret"></a> [cc\_api\_secret](#input\_cc\_api\_secret) | Confluent cloud - cloud api secret | `any` | n/a | yes |
| <a name="input_cc_env_id"></a> [cc\_env\_id](#input\_cc\_env\_id) | Environment id for the confluent cloud platt network | `any` | n/a | yes |
| <a name="input_cc_network_location"></a> [cc\_network\_location](#input\_cc\_network\_location) | Confluent Cloud Platt network & enterprise cluster location | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azure_endpoint_name"></a> [azure\_endpoint\_name](#output\_azure\_endpoint\_name) | Azure endpoint name created in the vnet |
| <a name="output_azure_hosted_zone_name"></a> [azure\_hosted\_zone\_name](#output\_azure\_hosted\_zone\_name) | Azure hosted zone name for confluent cloud platt |
| <a name="output_azure_hosted_zone_records"></a> [azure\_hosted\_zone\_records](#output\_azure\_hosted\_zone\_records) | Azure hosted zone records for confluent cloud platt |
| <a name="output_cc_cluster_endpoint"></a> [cc\_cluster\_endpoint](#output\_cc\_cluster\_endpoint) | Confluent enterprise cluster endpoint |
| <a name="output_cc_platt_connection_name"></a> [cc\_platt\_connection\_name](#output\_cc\_platt\_connection\_name) | Confluent PLATT connection Name |
| <a name="output_cc_platt_name"></a> [cc\_platt\_name](#output\_cc\_platt\_name) | Confluent PLATT name |
<!-- END_TF_DOCS -->