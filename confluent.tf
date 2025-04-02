resource "confluent_private_link_attachment" "default" {
  cloud = "AZURE"
  region = var.cc_network_location
  display_name = "Kubota_test_PLATT"
  environment {
    id = data.confluent_environment.default.id
  }
}

resource "confluent_private_link_attachment_connection" "default" {
  display_name = "${confluent_private_link_attachment.default.display_name}-connection"
  environment {
    id = data.confluent_environment.default.id
  }
  azure {
    private_endpoint_resource_id = azurerm_private_endpoint.default.id
  }
  private_link_attachment {
    id = confluent_private_link_attachment.default.id
  }
}

resource "confluent_kafka_cluster" "enterprise" {
  display_name = "Kubota_test"
  availability = "HIGH"
  cloud        = "AZURE"
  region       = var.cc_network_location
  enterprise {}

  environment {
    id = data.confluent_environment.default.id
  }

  lifecycle {
    prevent_destroy = false
  }
}