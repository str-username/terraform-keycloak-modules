resource "keycloak_realm" "this" {
  realm                                    = var.name
  enabled                                  = var.enabled
  display_name                             = var.display_name == null ? var.name : var.display_name
  user_managed_access                      = var.user_managed_access
  attributes                               = var.attributes
  internal_id                              = var.internal_id
  registration_allowed                     = var.registration_allowed
  registration_email_as_username           = var.registration_email_as_username
  edit_username_allowed                    = var.edit_username_allowed
  reset_password_allowed                   = var.reset_password_allowed
  remember_me                              = var.remember_me
  verify_email                             = var.verify_email
  login_with_email_allowed                 = var.login_with_email_allowed
  duplicate_emails_allowed                 = var.login_with_email_allowed == true ? false : var.duplicate_emails_allowed
  ssl_required                             = var.ssl_required
  login_theme                              = var.login_theme
  account_theme                            = var.account_theme
  admin_theme                              = var.admin_theme
  email_theme                              = var.email_theme
  default_signature_algorithm              = var.default_signature_algorithm
  revoke_refresh_token                     = var.revoke_refresh_token
  refresh_token_max_reuse                  = var.refresh_token_max_reuse
  sso_session_idle_timeout                 = var.sso_session_idle_timeout
  sso_session_max_lifespan                 = var.sso_session_max_lifespan
  sso_session_idle_timeout_remember_me     = var.sso_session_idle_timeout_remember_me
  sso_session_max_lifespan_remember_me     = var.sso_session_max_lifespan_remember_me
  offline_session_idle_timeout             = var.offline_session_idle_timeout
  offline_session_max_lifespan             = var.offline_session_max_lifespan_enabled == true ? var.offline_session_max_lifespan : null
  offline_session_max_lifespan_enabled     = var.offline_session_max_lifespan_enabled
  client_session_idle_timeout              = var.client_session_idle_timeout
  client_session_max_lifespan              = var.client_session_max_lifespan
  access_token_lifespan                    = var.access_token_lifespan
  access_token_lifespan_for_implicit_flow  = var.access_token_lifespan_for_implicit_flow
  access_code_lifespan                     = var.access_code_lifespan
  access_code_lifespan_login               = var.access_code_lifespan_login
  access_code_lifespan_user_action         = var.access_code_lifespan_user_action
  action_token_generated_by_user_lifespan  = var.action_token_generated_by_user_lifespan
  action_token_generated_by_admin_lifespan = var.action_token_generated_by_admin_lifespan
  oauth2_device_code_lifespan              = var.oauth2_device_code_lifespan
  oauth2_device_polling_interval           = var.oauth2_device_polling_interval
  password_policy                          = var.password_policy
  browser_flow                             = var.browser_flow
  registration_flow                        = var.registration_flow
  direct_grant_flow                        = var.direct_grant_flow
  reset_credentials_flow                   = var.reset_credentials_flow
  client_authentication_flow               = var.client_authentication_flow
  docker_authentication_flow               = var.docker_authentication_flow
  default_default_client_scopes            = var.default_default_client_scopes
  default_optional_client_scopes           = var.default_optional_client_scopes

  dynamic "smtp_server" {
    for_each = var.smtp_server.enabled == true ? [1] : []
    content {
      host = var.smtp_server.host
      port = var.smtp_server.port
      from = var.smtp_server.from
      auth {
        username = var.smtp_server.username
        password = var.smtp_server.password
      }
    }
  }

  dynamic "internationalization" {
    for_each = var.internationalization.enabled == true ? [1] : []
    content {
      supported_locales = var.internationalization.supported_locales
      default_locale    = var.internationalization.default_locale
    }
  }

  dynamic "security_defenses" {
    for_each = var.security_defenses_enabled == true ? [1] : []
    content {
      dynamic "headers" {
        for_each = var.defenses_headers.enabled == true ? [1] : []
        content {
          content_security_policy   = var.defenses_headers.content_security_policy
          referrer_policy           = var.defenses_headers.referrer_policy
          strict_transport_security = var.defenses_headers.strict_transport_security
          x_content_type_options    = var.defenses_headers.x_content_type_options
          x_frame_options           = var.defenses_headers.x_frame_options
          x_robots_tag              = var.defenses_headers.x_robots_tag
          x_xss_protection          = var.defenses_headers.x_xss_protection

        }
      }
      dynamic "brute_force_detection" {
        for_each = var.defenses_brute_force_detection.enabled == true ? [1] : []
        content {
          permanent_lockout                = var.defenses_brute_force_detection.permanent_lockout
          max_login_failures               = var.defenses_brute_force_detection.max_login_failures
          wait_increment_seconds           = var.defenses_brute_force_detection.wait_increment_seconds
          quick_login_check_milli_seconds  = var.defenses_brute_force_detection.quick_login_check_milli_seconds
          minimum_quick_login_wait_seconds = var.defenses_brute_force_detection.minimum_quick_login_wait_seconds
          max_failure_wait_seconds         = var.defenses_brute_force_detection.max_failure_wait_seconds
          failure_reset_time_seconds       = var.defenses_brute_force_detection.failure_reset_time_seconds
        }
      }
    }
  }

  dynamic "otp_policy" {
    for_each = var.otp_policy.enabled == true ? [1] : []
    content {
      type              = var.otp_policy.type
      algorithm         = var.otp_policy.algorithm
      digits            = var.otp_policy.digits
      initial_counter   = var.otp_policy.initial_counter
      look_ahead_window = var.otp_policy.look_ahead_window
      period            = var.otp_policy.period
    }
  }

  dynamic "web_authn_policy" {
    for_each = var.web_authn_policy.web_authn_enabled == true ? [1] : []
    content {
      relying_party_entity_name         = var.web_authn_policy.relying_party_entity_name
      relying_party_id                  = var.web_authn_policy.relying_party_id
      signature_algorithms              = var.web_authn_policy.signature_algorithms
      attestation_conveyance_preference = var.web_authn_policy.attestation_conveyance_preference
      authenticator_attachment          = var.web_authn_policy.authenticator_attachment
      require_resident_key              = var.web_authn_policy.require_resident_key
      user_verification_requirement     = var.web_authn_policy.user_verification_requirement
      create_timeout                    = var.web_authn_policy.create_timeout
      avoid_same_authenticator_register = var.web_authn_policy.avoid_same_authenticator_register
      acceptable_aaguids                = var.web_authn_policy.acceptable_aaguids
    }
  }

  dynamic "web_authn_passwordless_policy" {
    for_each = var.web_authn_policy.web_authn_passwordless_enabled == true ? [1] : []
    content {
      relying_party_entity_name         = var.web_authn_policy.relying_party_entity_name
      relying_party_id                  = var.web_authn_policy.relying_party_id
      signature_algorithms              = var.web_authn_policy.signature_algorithms
      attestation_conveyance_preference = var.web_authn_policy.attestation_conveyance_preference
      authenticator_attachment          = var.web_authn_policy.authenticator_attachment
      require_resident_key              = var.web_authn_policy.require_resident_key
      user_verification_requirement     = var.web_authn_policy.user_verification_requirement
      create_timeout                    = var.web_authn_policy.create_timeout
      avoid_same_authenticator_register = var.web_authn_policy.avoid_same_authenticator_register
      acceptable_aaguids                = var.web_authn_policy.acceptable_aaguids
    }
  }
}

resource "keycloak_realm_events" "this" {
  count                        = var.realm_events_enabled == true ? 1 : 0
  realm_id                     = keycloak_realm.this.id
  admin_events_enabled         = var.admin_events_enabled
  admin_events_details_enabled = var.admin_events_details_enabled
  events_enabled               = var.events_enabled
  events_expiration            = var.events_expiration
  enabled_event_types          = var.enabled_event_types
  events_listeners             = var.events_listeners
}
