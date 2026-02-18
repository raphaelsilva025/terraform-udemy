data "azurerm_network_security_group" "nsg" {

  depends_on = [azurerm_network_security_group.nsg]

  name                = azurerm_network_security_group.nsg.name
  resource_group_name = azurerm_resource_group.rg.name
}