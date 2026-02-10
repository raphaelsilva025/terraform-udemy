output "storage_account_id" {
  description = "The ID of the created storage account."
  value       = azurerm_storage_account.storage_account.id


}
output "sa_primaru_acess_key" {
  description = "The primary access key of the storage account."
  value       = azurerm_storage_account.storage_account.primary_access_key
  sensitive   = true

}