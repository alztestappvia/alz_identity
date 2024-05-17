# Output a copy of configure_identity_resources for use
# by the core module instance

output "configuration" {
  description = "Configuration settings for the \"identity\" resources."
  value       = local.configure_identity_resources
}

output "subscription_id" {
  description = "Subscription ID for the \"identity\" resources."
  value       = data.azurerm_client_config.current.subscription_id
}
