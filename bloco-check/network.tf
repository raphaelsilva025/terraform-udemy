resource "azurerm_resource_group" "rg" {
  name     = "rg-bloco-check"
  location = "West Europe"
}

resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-bloco-check"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_rule" "rule" {
  for_each = toset(local.nsg_ports)

  name                        = "porta-${each.key}"
  priority                    = (index(local.nsg_ports, each.key) * 10) + 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.key
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.nsg.name
}
