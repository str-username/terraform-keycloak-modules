resource "keycloak_openid_client" "this" {
  realm_id                                   = var.realm_id
  client_id                                  = var.client_id
  name                                       = var.name != null ? var.name : var.client_id
  enabled                                    = var.enabled
  description                                = var.description
  access_type                                = var.access_type
  client_secret                              = var.access_type != "PUBLIC" ? var.client_secret : null
  client_authenticator_type                  = var.access_type != "PUBLIC" ? var.client_authenticator_type : null
  standard_flow_enabled                      = var.standard_flow_enabled
  implicit_flow_enabled                      = var.implicit_flow_enabled
  direct_access_grants_enabled               = var.direct_access_grants_enabled
  service_accounts_enabled                   = var.service_accounts_enabled
  frontchannel_logout_enabled                = var.frontchannel_logout_enabled
  frontchannel_logout_url                    = var.frontchannel_logout_enabled == true ? var.frontchannel_logout_url : null
  valid_redirect_uris                        = (var.standard_flow_enabled || var.implicit_flow_enabled) == true ? var.valid_redirect_uris : null
  valid_post_logout_redirect_uris            = var.valid_post_logout_redirect_uris
  web_origins                                = var.web_origins
  root_url                                   = var.root_url
  admin_url                                  = var.admin_url
  base_url                                   = var.base_url
  pkce_code_challenge_method                 = var.pkce_code_challenge_method
  full_scope_allowed                         = var.full_scope_allowed
  access_token_lifespan                      = var.access_token_lifespan
  client_offline_session_idle_timeout        = var.client_offline_session_idle_timeout
  client_offline_session_max_lifespan        = var.client_offline_session_max_lifespan
  client_session_idle_timeout                = var.client_session_idle_timeout
  client_session_max_lifespan                = var.client_session_max_lifespan
  consent_required                           = var.consent_required
  display_on_consent_screen                  = var.display_on_consent_screen
  consent_screen_text                        = var.consent_screen_text
  login_theme                                = var.login_theme
  exclude_session_state_from_auth_response   = var.exclude_session_state_from_auth_response
  use_refresh_tokens                         = var.use_refresh_tokens
  use_refresh_tokens_client_credentials      = var.use_refresh_tokens_client_credentials
  oauth2_device_authorization_grant_enabled  = var.oauth2_device_authorization_grant_enabled
  oauth2_device_code_lifespan                = var.oauth2_device_code_lifespan
  oauth2_device_polling_interval             = var.oauth2_device_polling_interval
  backchannel_logout_url                     = var.backchannel_logout_url
  backchannel_logout_session_required        = var.backchannel_logout_session_required
  backchannel_logout_revoke_offline_sessions = var.backchannel_logout_revoke_offline_sessions
  extra_config                               = var.extra_config
}