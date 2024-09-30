resource "azurerm_user_assigned_identity" "acaghr_managed_identity" {
  location            = data.azurerm_resource_group.acaghr_rg.location
  name                = "${var.prefix}-${random_string.resource_name.result}-acaghr"
  resource_group_name = data.azurerm_resource_group.acaghr_rg.name
  tags = local.default_tags
}