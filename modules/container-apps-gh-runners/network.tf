# Create VNET for Azure Container apps env
resource "azurerm_virtual_network" "acaghr_vnet" {
  name                = "${var.prefix}-acaghr-vnet"
  address_space       = [var.vnet_address_space]
  location            = azurerm_resource_group.acaghr_rg.location
  resource_group_name = azurerm_resource_group.acaghr_rg.name
}

# Create the Subnet for Azure Key Vault
resource "azurerm_subnet" "acaghr_subnet" {
  name                 = "${var.prefix}-acaghr-aca-subnet"
  resource_group_name  = azurerm_resource_group.acaghr_rg.name
  virtual_network_name = azurerm_virtual_network.acaghr_vnet.name
  address_prefixes     = [var.subnet_address_space]
  service_endpoints    = local.service_endpoints
}
