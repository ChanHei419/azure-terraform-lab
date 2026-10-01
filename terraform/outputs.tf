output "resource_group_name" {
  description = "Name of the created resource group."
  value       = module.resource_group.name
}

output "storage_account_name" {
  description = "Name of the created storage account."
  value       = module.storage.storage_account_name
}

output "container_name" {
  description = "Name of the private blob container."
  value       = module.storage.container_name
}

output "managed_identity_client_id" {
  description = "Client ID of the automation managed identity."
  value       = azurerm_user_assigned_identity.automation.client_id
}

output "managed_identity_principal_id" {
  description = "Principal ID of the automation managed identity."
  value       = azurerm_user_assigned_identity.automation.principal_id
}
