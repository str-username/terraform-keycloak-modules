variable "realm_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "name" {
  type    = string
  default = null
}

variable "enabled" {
  type    = bool
  default = true
}

variable "description" {
  type    = string
  default = null
}

variable "access_type" {
  type    = string
  default = "CONFIDENTIAL"
}

variable "client_secret" {
  type    = string
  default = null
}

variable "client_authenticator_type" {
  type    = string
  default = "client-secret"
}

variable "standard_flow_enabled" {
  type    = bool
  default = false
}

variable "implicit_flow_enabled" {
  type    = bool
  default = false
}

variable "direct_access_grants_enabled" {
  type    = bool
  default = false
}

variable "service_accounts_enabled" {
  type    = bool
  default = false
}

variable "frontchannel_logout_enabled" {
  type    = bool
  default = false
}

variable "frontchannel_logout_url" {
  type    = string
  default = null
}

variable "valid_redirect_uris" {
  type    = list(string)
  default = []
}

variable "valid_post_logout_redirect_uris" {
  type    = list(string)
  default = []
}


variable "web_origins" {
  type    = list(string)
  default = []
}

variable "root_url" {
  type    = string
  default = null
}

variable "admin_url" {
  type    = string
  default = null
}

variable "base_url" {
  type    = string
  default = null
}

variable "pkce_code_challenge_method" {
  type    = string
  default = null
}


variable "full_scope_allowed" {
  type    = bool
  default = false
}

variable "access_token_lifespan" {
  type    = number
  default = null
}

variable "client_offline_session_idle_timeout" {
  type    = number
  default = null
}


variable "client_offline_session_max_lifespan" {
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

variable "consent_required" {
  type    = bool
  default = false
}

variable "display_on_consent_screen" {
  type    = bool
  default = false
}

variable "consent_screen_text" {
  type    = string
  default = ""
}

variable "login_theme" {
  type    = string
  default = ""
}

variable "exclude_session_state_from_auth_response" {
  type    = bool
  default = false
}

variable "use_refresh_tokens" {
  type    = bool
  default = true
}

variable "use_refresh_tokens_client_credentials" {
  type    = bool
  default = false
}

variable "oauth2_device_authorization_grant_enabled" {
  type    = bool
  default = false
}

variable "oauth2_device_code_lifespan" {
  type    = number
  default = null
}

variable "oauth2_device_polling_interval" {
  type    = number
  default = null
}

variable "backchannel_logout_url" {
  type    = string
  default = null
}

variable "backchannel_logout_session_required" {
  type    = bool
  default = true
}

variable "backchannel_logout_revoke_offline_sessions" {
  type    = bool
  default = false
}

variable "extra_config" {
  type    = map(string)
  default = null
}