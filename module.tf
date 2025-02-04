

resource "azuread_service_principal" "azad_sp" {
  account_enabled              = var.account_enabled
  alternative_names            = var.alternative_names
  app_role_assignment_required = var.app_role_assignment_required
  client_id                    = var.client_id
  description                  = var.description
  feature_tags {
    custom_single_sign_on = var.feature_tags.custom_single_sign_on
    enterprise            = var.feature_tags.enterprise
    gallery               = var.feature_tags.gallery
    hide                  = var.feature_tags.hide
    }
    login_url                    = var.login_url
    notes                        = var.notes
    notification_email_addresses = var.notification_email_addresses
    owners = var.owners
    preferred_single_sign_on_mode = var.preferred_single_sign_on_mode
    saml_single_sign_on {
        relay_state = var.saml_single_sign_on.relay_state
    }
}
