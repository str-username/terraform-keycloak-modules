module "complete" {
  source                    = "../../../modules/realm"
  name                      = "complete"
  security_defenses_enabled = true

  smtp_server = {
    enabled  = true
    host     = "smtp.google.com"
    port     = 465
    from     = "from-mail@mycompany.com"
    username = "user"
    password = "password"
  }

  internationalization = {
    enabled = true
    supported_locales = [
      "en",
      "de",
      "es"
    ]
    default_locale = "en"
  }

  defenses_headers = {
    enabled                   = true
    content_security_policy   = "frame-src 'self'; frame-ancestors 'self'; object-src 'none';"
    referrer_policy           = "no-referrer"
    strict_transport_security = "max-age=31536000; includeSubDomains"
    x_content_type_options    = "nosniff"
    x_frame_options           = "SAMEORIGIN"
    x_robots_tag              = "none"
    x_xss_protection          = "1; mode=block"
  }

  defenses_brute_force_detection = {
    enabled                          = true
    permanent_lockout                = true
    max_login_failures               = 30
    wait_increment_seconds           = 60
    quick_login_check_milli_seconds  = 1000
    minimum_quick_login_wait_seconds = 60
    max_failure_wait_seconds         = 30
    failure_reset_time_seconds       = 43200
  }

  otp_policy = {
    enabled           = true
    type              = "hotp"
    algorithm         = "HmacSHA1"
    digits            = 6
    initial_counter   = 2
    look_ahead_window = 1
    period            = 30
  }

  web_authn_policy = {
    web_authn_enabled                 = true
    web_authn_passwordless_enabled    = false
    relying_party_entity_name         = "keycloak"
    relying_party_id                  = "ES256"
    signature_algorithms              = ["not specified"]
    attestation_conveyance_preference = "not specified"
    authenticator_attachment          = "not specified"
    require_resident_key              = "not specified"
    user_verification_requirement     = "not specified"
    create_timeout                    = 0
    avoid_same_authenticator_register = false
    acceptable_aaguids                = ["not specified"]
  }
}