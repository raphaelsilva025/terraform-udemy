check "nsg_rules" {
  data "azurerm_network_security_group" "rules" {
    name                = azurerm_network_security_group.nsg.name
    resource_group_name = azurerm_resource_group.rg.name
  }

  assert {
    condition     = sort([for rule in data.azurerm_network_security_group.rules.security_rule : rule.destination_port_range]) == sort(local.nsg_ports)
    error_message = "Existem regras no Network security Group criadas fora do Terraform."
  }
}