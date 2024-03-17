variable "name" {
  type = string
}

variable "enabled" {
  type    = bool
  default = true
}

variable "display_name" {
  type    = string
  default = null
}

variable "user_managed_access" {
  type    = bool
  default = false
}

variable "attributes" {
  type    = map(any)
  default = {}
}

variable "internal_id" {
  type    = string
  default = null
}

variable "registration_allowed" {
  type    = bool
  default = false
}

variable "registration_email_as_username" {
  type    = bool
  default = false
}

variable "edit_username_allowed" {
  type    = bool
  default = false
}

variable "reset_password_allowed" {
  type    = bool
  default = false
}

variable "remember_me" {
  type    = bool
  default = false
}

variable "verify_email" {
  type    = bool
  default = false
}

variable "login_with_email_allowed" {
  type    = bool
  default = true
}

variable "duplicate_emails_allowed" {
  type    = bool
  default = false
}

variable "ssl_required" {
  type    = string
  default = "external"
}

variable "login_theme" {
  type    = string
  default = "keycloak"
}

variable "account_theme" {
  type    = string
  default = "keycloak.v2"
}

variable "admin_theme" {
  type    = string
  default = "keycloak.v2"
}

variable "email_theme" {
  type    = string
  default = "keycloak"
}

variable "default_signature_algorithm" {
  type    = string
  default = "RS256"
}

variable "revoke_refresh_token" {
  type    = bool
  default = false
}

variable "refresh_token_max_reuse" {
  type    = number
  default = null
}

variable "sso_session_idle_timeout" {
  type    = number
  default = null
}

variable "sso_session_max_lifespan" {
  type    = number
  default = null
}

variable "sso_session_idle_timeout_remember_me" {
  type    = number
  default = null
}

variable "sso_session_max_lifespan_remember_me" {
  type    = number
  default = null
}

variable "offline_session_idle_timeout" {
  type    = number
  default = null
}

variable "offline_session_max_lifespan_enabled" {
  type    = bool
  default = false
}

variable "offline_session_max_lifespan" {
  type    = number
  default = null
}

variable "client_session_idle_timeout" {
  type    = number
  default = null
}

variable "client_session_max_lifespan" {
  type    = number
  default = null
}

variable "access_token_lifespan" {
  type    = number
  default = null
}

variable "access_token_lifespan_for_implicit_flow" {
  type    = number
  default = null
}

variable "access_code_lifespan" {
  type    = number
  default = null
}

variable "access_code_lifespan_login" {
  type    = number
  default = null
}

variable "access_code_lifespan_user_action" {
  type    = number
  default = null
}

variable "action_token_generated_by_user_lifespan" {
  type    = number
  default = null
}

variable "action_token_generated_by_admin_lifespan" {
  type    = number
  default = null
}

variable "oauth2_device_code_lifespan" {
  type    = number
  default = null
}

variable "oauth2_device_polling_interval" {
  type    = number
  default = null
}

variable "password_policy" {
  type    = number
  default = null
}

variable "browser_flow" {
  type    = string
  default = null
}

variable "registration_flow" {
  type    = string
  default = null
}

variable "direct_grant_flow" {
  type    = string
  default = null
}

variable "reset_credentials_flow" {
  type    = string
  default = null
}

variable "client_authentication_flow" {
  type    = string
  default = null
}

variable "docker_authentication_flow" {
  type    = string
  default = null
}

variable "default_default_client_scopes" {
  type    = list(string)
  default = null
}

variable "default_optional_client_scopes" {
  type    = list(string)
  default = null
}

variable "smtp_server" {
  type = object({
    enabled  = bool
    host     = string
    port     = optional(string, null)
    from     = string
    username = string
    password = string
  })
  default = {
    enabled  = false
    host     = null
    port     = null
    from     = null
    username = null
    password = null
  }
}

variable "internationalization" {
  type = object({
    enabled           = bool
    supported_locales = list(string)
    default_locale    = string
  })
  default = {
    enabled           = false
    supported_locales = null
    default_locale    = null
  }
}

variable "security_defenses_enabled" {
  type    = bool
  default = true
}

variable "defenses_headers" {
  type = object({
    enabled                   = bool
    content_security_policy   = optional(string)
    referrer_policy           = optional(string)
    strict_transport_security = optional(string)
    x_content_type_options    = optional(string)
    x_frame_options           = optional(string)
    x_robots_tag              = optional(string)
    x_xss_protection          = optional(string)
  })

  default = {
    enabled                   = true
    content_security_policy   = "frame-src 'self'; frame-ancestors 'self'; object-src 'none';"
    referrer_policy           = "no-referrer"
    strict_transport_security = "max-age=31536000; includeSubDomains"
    x_content_type_options    = "nosniff"
    x_frame_options           = "SAMEORIGIN"
    x_robots_tag              = "none"
    x_xss_protection          = "1; mode=block"
  }
}

variable "defenses_brute_force_detection" {
  type = object({
    enabled                          = bool
    permanent_lockout                = optional(bool)
    max_login_failures               = optional(number)
    wait_increment_seconds           = optional(string)
    quick_login_check_milli_seconds  = optional(string)
    minimum_quick_login_wait_seconds = optional(string)
    max_failure_wait_seconds         = optional(string)
    failure_reset_time_seconds       = optional(string)
  })

  default = {
    enabled                          = false
    permanent_lockout                = false
    max_login_failures               = 30
    wait_increment_seconds           = 60
    quick_login_check_milli_seconds  = 1000
    minimum_quick_login_wait_seconds = 60
    max_failure_wait_seconds         = 30
    failure_reset_time_seconds       = 43200
  }
}

variable "otp_policy" {
  type = object({
    enabled           = bool
    type              = optional(string)
    algorithm         = optional(string)
    digits            = optional(number)
    initial_counter   = optional(number)
    look_ahead_window = optional(number)
    period            = optional(number)
  })

  default = {
    enabled = false
  }
}


variable "web_authn_policy" {
  type = object({
    web_authn_enabled                 = bool
    web_authn_passwordless_enabled    = bool
    relying_party_entity_name         = optional(string)
    relying_party_id                  = optional(string)
    signature_algorithms              = optional(set(string))
    attestation_conveyance_preference = optional(string)
    authenticator_attachment          = optional(string)
    require_resident_key              = optional(string)
    user_verification_requirement     = optional(string)
    create_timeout                    = optional(number)
    avoid_same_authenticator_register = optional(bool)
    acceptable_aaguids                = optional(set(string))
  })

  default = {
    web_authn_enabled              = false
    web_authn_passwordless_enabled = false
  }
}


variable "realm_events_enabled" {
  type    = bool
  default = false
}

variable "admin_events_enabled" {
  type    = bool
  default = false
}

variable "admin_events_details_enabled" {
  type    = bool
  default = false
}

variable "events_enabled" {
  type    = bool
  default = false
}

variable "events_expiration" {
  type    = number
  default = 0
}

variable "enabled_event_types" {
  type    = set(string)
  default = []
}

variable "events_listeners" {
  type    = set(string)
  default = ["jboss-logging"]
}
