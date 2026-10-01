output "storage_account_id" {
  description = "Storage account resource ID."
  value       = azurerm_storage_account.this.id
}

output "storage_account_name" {
  description = "Storage account name."
  value       = azurerm_storage_account.this.name
}

output "container_name" {
  description = "Private blob container name."
  value       = azurerm_storage_container.reports.name
}
