output "storage_accounts_id" {
  description = "The ID of the created storage account."
  value       = [for sa in azurerm_storage_account.storage_account : sa.id]
}


output "sa_primary_access_keys_" {
  description = "The primary access key of the storage account."
  value       = { for key, sa in azurerm_storage_account.storage_account : key => sa.primary_access_key }
  sensitive   = true
}