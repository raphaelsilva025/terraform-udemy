output "subnet_id" {
  value       = azurerm_subnet.subnet.id
  sensitive   = false
  description = "Valor da ID da Subnet criada na Azure"
  depends_on  = []
}


output "security_group_id" {
  value       = azurerm_network_security_group.security_group.id
  sensitive   = false
  description = "Valor da ID da Security Group criada na Azure"
  depends_on  = []
}
