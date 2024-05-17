variable "root_id" {
  type        = string
  description = "Sets the value used for generating unique resource naming within the module."
  default     = "alz"
}

variable "primary_location" {
  type        = string
  description = "Sets the value used for the primary location of resources within the module."
  default     = "uksouth"
}

variable "use_oidc" {
  type        = bool
  description = "Use OpenID Connect to authenticate to AzureRM"
  default     = false
}
