
locals {
  ip_rules = var.runner_ip != "" ? ["${var.runner_ip}/32"] : []
  service_endpoints = setunion(["Microsoft.KeyVault"], var.additional_service_endpoints)
  default_tags = {
    createdWith = "tjololo/hello-module/container-apps-gh-runners"
  }
}

# Get resource group data
data "azurerm_resource_group" "acaghr_rg" {
  name = var.resource_group_name
}

resource "random_string" "resource_name" {
  length = 6
  special = false
  upper = false
}

resource "random_string" "job_name" {
  for_each = {for index, repo in var.repos:"${repo.owner}/${repo.name}" => repo}
  length = 6
  special = false
  upper = false
}