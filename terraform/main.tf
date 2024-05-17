module "alz" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "5.0.3"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }

  # Base module configuration settings
  root_parent_id   = data.azurerm_client_config.current.tenant_id
  root_id          = var.root_id
  default_location = var.primary_location

  # Disable creation of the core management group hierarchy
  # as this is being created by the core module instance
  deploy_core_landing_zones = false

  disable_telemetry = true

  # Configuration settings for identity resources
  deploy_identity_resources    = true
  configure_identity_resources = local.configure_identity_resources
  subscription_id_identity     = data.azurerm_client_config.current.subscription_id
}

