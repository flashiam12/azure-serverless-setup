output "cc_cluster_endpoint" {
  value = confluent_kafka_cluster.enterprise.bootstrap_endpoint
  description = "Confluent enterprise cluster endpoint"
}

output "cc_platt_name" {
  value = confluent_private_link_attachment.default.display_name
  description = "Confluent PLATT name"
}

output "cc_platt_connection_name" {
  value = confluent_private_link_attachment_connection.default.display_name
  description = "Confluent PLATT connection Name"
}

output "azure_hosted_zone_name" {
  value = azurerm_private_dns_zone.default.name
  description = "Azure hosted zone name for confluent cloud platt"
}

output "azure_hosted_zone_records" {
  value = azurerm_private_dns_a_record.default.records
  description = "Azure hosted zone records for confluent cloud platt"
}

output "azure_endpoint_name" {
  value = azurerm_private_endpoint.default.name
  description = "Azure endpoint name created in the vnet"
}
