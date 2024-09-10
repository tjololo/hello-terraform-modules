
locals {
  ip_rules = var.runner_ip != "" ? ["${var.runner_ip}/32"] : []
  service_endpoints = concat(["Microsoft.KeyVault"], var.additional_service_endpoints)
}

# Create Resource Group
resource "azurerm_resource_group" "acaghr_rg" {
  name     = "${var.prefix}-acaghr-rg"
  location = var.location
}

