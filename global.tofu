# Update the default global contact information
resource "pingfederate_server_settings" "serverSettingsExample" {
  contact_info = {
    company    = var.company_name
    email      = var.admin_email
    first_name = var.admin_first_name
    last_name  = var.admin_last_name
    phone      = var.phone_number
  }
  federation_info = {
    base_url = var.base_url

    // SAML entities have to be defined first
    saml_2_entity_id  = "org:${var.issuer}:auth"
    saml_1x_issuer_id = "auth.${var.issuer}.org"

    wsfed_realm = "realm"
  }
}

# Update general server settings
resource "pingfederate_server_settings_general" "serverSettingsGeneralExample" {
  datastore_validation_interval_secs          = 300
  disable_automatic_connection_validation     = false
  idp_connection_transaction_logging_override = "NONE"
  request_header_for_correlation_id           = "example"
  sp_connection_transaction_logging_override  = "FULL"
}