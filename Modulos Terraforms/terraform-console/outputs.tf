output "rg_id" {
  value       = azurerm_resource_group.resource_group.id
  sensitive   = false
  description = "Valor da ID do RG criada na Azure"
  depends_on  = []
}

