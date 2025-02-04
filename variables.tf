# variables file to the module
variable "account_enabled" {
  description = "Whether or not the service principal account is enabled. Defaults to true."
  type        = bool
  default     = true
}

variable "alternative_names" {
  description = "A set of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities."
  type        = set(string)
  default     = []
}

variable "app_role_assignment_required" {
  description = "Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application. Defaults to false."
  type        = bool
  default     = false
}

variable "client_id" {
  description = "The client ID of the application for which to create a service principal."
  type        = string
}

variable "description" {
  description = "A description of the service principal provided for internal end-users."
  type        = string
  default     = null
}

variable "feature_tags" {
  description = "A feature_tags block as described below. Cannot be used together with the tags property."
  type = object({
    custom_single_sign_on = bool
    enterprise            = bool
    gallery               = bool
    hide                  = bool
  })
  default = null
}

variable "login_url" {
  description = "The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on."
  type        = string
  default     = null
}

variable "notes" {
  description = "A free text field to capture information about the service principal, typically used for operational purposes."
  type        = string
  default     = null
}

variable "notification_email_addresses" {
  description = "A set of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications."
  type        = set(string)
  default     = []
}

variable "owners" {
  description = "A set of object IDs of principals that will be granted ownership of the service principal. Supported object types are users or service principals. By default, no owners are assigned."
  type        = set(string)
  default     = []
}

variable "preferred_single_sign_on_mode" {
  description = "The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. Supported values are oidc, password, saml or notSupported. Omit this property or specify a blank string to unset."
  type        = string
  default     = null
}

variable "saml_single_sign_on" {
  description = "A saml_single_sign_on block as documented below."
  type = object({
    relay_state = string
  })
  default = null
}

