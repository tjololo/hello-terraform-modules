resource "azurerm_user_assigned_identity" "acaghr_managed_identity" {
  location            = azurerm_resource_group.acaghr_rg.location
  name                = "${var.prefix}-acaghr-01"
  resource_group_name = azurerm_resource_group.acaghr_rg.name
}