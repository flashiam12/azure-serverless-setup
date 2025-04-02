resource "azurerm_private_endpoint" "default" {
  name                = "kubota-test-cc-endpoint"
  location            = data.azurerm_resource_group.default.location
  resource_group_name = data.azurerm_resource_group.default.name
  subnet_id           = data.azurerm_subnet.default.id

  private_service_connection {
    name                           = "kubota-test-cc-kafka-pl"
    private_connection_resource_id = confluent_private_link_attachment.default.azure.0.private_link_service_resource_id
    is_manual_connection           = true
    request_message = "Hello"
  }
}

# Private DNS Zone
resource "azurerm_private_dns_zone" "default" {
  name                = confluent_private_link_attachment.default.dns_domain
  resource_group_name = data.azurerm_resource_group.default.name
}

# Private DNS Zone Record Set (A Record)
resource "azurerm_private_dns_a_record" "default" {
  name                = "*"
  zone_name           = azurerm_private_dns_zone.default.name
  resource_group_name = data.azurerm_resource_group.default.name
  ttl                 = 60
  records             = [azurerm_private_endpoint.default.private_service_connection.0.private_ip_address]
}

# Virtual Network Link
resource "azurerm_private_dns_zone_virtual_network_link" "default" {
  name                = "kubota-test-vnet-link"
  resource_group_name = data.azurerm_resource_group.default.name
  private_dns_zone_name = azurerm_private_dns_zone.default.name
  virtual_network_id  = data.azurerm_virtual_network.default.id
  registration_enabled = true
}


