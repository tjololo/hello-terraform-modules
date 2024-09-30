
locals {
  ip_rules = var.runner_ip != "" ? ["${var.runner_ip}/32"] : []
  service_endpoints = setunion(["Microsoft.KeyVault"], var.additional_service_endpoints)
}

# Create Resource Group
resource "azurerm_resource_group" "acaghr_rg" {
  name     = "${var.prefix}-${random_string.resource_name.result}-acaghr"
  location = var.location
}

resource "random_string" "resource_name" {
  length = 6
  special = false
}

resource "random_string" "job_name" {
  for_each = {for index, repo in var.repos:"${repo.owner}/${repo.name}" => repo}
  length = 6
  special = false
}