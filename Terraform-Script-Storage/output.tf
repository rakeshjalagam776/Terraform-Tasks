output "storage_account_name" {
    description = "Name of the storage account"
    value       = azurerm_storage_account.storage.name
}

output "storage_rpimary_endpoint" {
    description = "primary blob endpoint"
    value       = azurerm_storage_account.storage.primary_blob_endpoint
    }

