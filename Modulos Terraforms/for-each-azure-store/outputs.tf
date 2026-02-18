output "storage_account_europa_id" {
  description = "The ID of the created storage account."
  value       = azurerm_storage_account.storage_account["europa"].id
}

output "storage_account_eua_id" {
  description = "The ID of the created storage account."
  value       = azurerm_storage_account.storage_account["eua"].id
}

output "storage_account_asia_id" {
  description = "The ID of the created storage account."
  value       = azurerm_storage_account.storage_account["asia"].id
}

output "storage_account_brasil_id" {
  description = "The ID of the created storage account."
  value       = azurerm_storage_account.storage_account["brasil"].id
}

output "sa_primaru_acess_key_europa" {
  description = "The primary access key of the storage account."
  value       = azurerm_storage_account.storage_account["europa"].primary_access_key
  sensitive   = true
}

output "sa_primaru_acess_key_eua" {
  description = "The primary access key of the storage account."
  value       = azurerm_storage_account.storage_account["eua"].primary_access_key
  sensitive   = true
}

output "sa_primaru_acess_key_asia" {
  description = "The primary access key of the storage account."
  value       = azurerm_storage_account.storage_account["asia"].primary_access_key
  sensitive   = true
}

output "sa_primaru_acess_key_brasil" {
  description = "The primary access key of the storage account."
  value       = azurerm_storage_account.storage_account["brasil"].primary_access_key
  sensitive   = true
}