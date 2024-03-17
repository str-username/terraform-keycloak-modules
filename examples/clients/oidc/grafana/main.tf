locals {
  realm_id = "sandbox"
}

module "grafana_oidc_client" {
  source                                     = "../../../../modules/clients/oidc"
  client_id                                  = "grafana-oauth"
  realm_id                                   = local.realm_id
  name                                       = "Grafana SSO"
  description                                = "Monitoring UI solution"
  display_on_consent_screen                  = false
  root_url                                   = "https://grafana.host.mydomain.com"
  base_url                                   = "https://grafana.host.mydomain.com"
  valid_redirect_uris                        = ["https://grafana.host.mydomain.com/generic_oauth"]
  web_origins                                = ["https://grafana.host.mydomain.com"]
  admin_url                                  = "https://grafana.host.mydomain.com"
  client_authenticator_type                  = "client-secret"
  standard_flow_enabled                      = true
  direct_access_grants_enabled               = true
  consent_required                           = false
  frontchannel_logout_enabled                = true
  backchannel_logout_session_required        = true
  backchannel_logout_revoke_offline_sessions = false
}

module "grafana_oidc_client_role" {
  source   = "../../../../modules/role"
  realm_id = local.realm_id
  roles = [
    {
      name        = "admin"
      client_id   = module.grafana_oidc_client.client_id
      description = "Grafana role with admin privileges"
    },
    {
      name        = "editor"
      client_id   = module.grafana_oidc_client.client_id
      description = "Grafana role with editor privileges"
    },
    {
      name        = "viewer"
      client_id   = module.grafana_oidc_client.client_id
      description = "Grafana role with viewer privileges"
    }
  ]
}