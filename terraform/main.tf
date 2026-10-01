module "resource_group" {
  source = "./modules/resource-group"

  project_name = var.project_name
  environment  = var.environment
  location     = var.location
  tags         = var.tags
}

module "storage" {
  source = "./modules/storage"

  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = module.resource_group.name
  tags                = var.tags
}

# User-assigned managed identity so automation runs without secrets.
resource "azurerm_user_assigned_identity" "automation" {
  name                = "id-${var.project_name}-${var.environment}"
  location            = var.location
  resource_group_name = module.resource_group.name
  tags                = var.tags
}

# Least privilege: the identity can manage blobs in this storage account only.
resource "azurerm_role_assignment" "storage_blob_contributor" {
  scope                = module.storage.storage_account_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_user_assigned_identity.automation.principal_id
}
