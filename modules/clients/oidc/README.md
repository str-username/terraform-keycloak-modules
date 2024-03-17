<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_keycloak"></a> [keycloak](#requirement\_keycloak) | 4.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_keycloak"></a> [keycloak](#provider\_keycloak) | 4.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [keycloak_openid_client.this](https://registry.terraform.io/providers/mrparkers/keycloak/4.4.0/docs/resources/openid_client) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_token_lifespan"></a> [access\_token\_lifespan](#input\_access\_token\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_access_type"></a> [access\_type](#input\_access\_type) | n/a | `string` | `"CONFIDENTIAL"` | no |
| <a name="input_admin_url"></a> [admin\_url](#input\_admin\_url) | n/a | `string` | `null` | no |
| <a name="input_backchannel_logout_revoke_offline_sessions"></a> [backchannel\_logout\_revoke\_offline\_sessions](#input\_backchannel\_logout\_revoke\_offline\_sessions) | n/a | `bool` | `false` | no |
| <a name="input_backchannel_logout_session_required"></a> [backchannel\_logout\_session\_required](#input\_backchannel\_logout\_session\_required) | n/a | `bool` | `true` | no |
| <a name="input_backchannel_logout_url"></a> [backchannel\_logout\_url](#input\_backchannel\_logout\_url) | n/a | `string` | `null` | no |
| <a name="input_base_url"></a> [base\_url](#input\_base\_url) | n/a | `string` | `null` | no |
| <a name="input_client_authenticator_type"></a> [client\_authenticator\_type](#input\_client\_authenticator\_type) | n/a | `string` | `"client-secret"` | no |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | n/a | `string` | n/a | yes |
| <a name="input_client_offline_session_idle_timeout"></a> [client\_offline\_session\_idle\_timeout](#input\_client\_offline\_session\_idle\_timeout) | n/a | `number` | `null` | no |
| <a name="input_client_offline_session_max_lifespan"></a> [client\_offline\_session\_max\_lifespan](#input\_client\_offline\_session\_max\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | n/a | `string` | `null` | no |
| <a name="input_client_session_idle_timeout"></a> [client\_session\_idle\_timeout](#input\_client\_session\_idle\_timeout) | n/a | `number` | `null` | no |
| <a name="input_client_session_max_lifespan"></a> [client\_session\_max\_lifespan](#input\_client\_session\_max\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_consent_required"></a> [consent\_required](#input\_consent\_required) | n/a | `bool` | `false` | no |
| <a name="input_consent_screen_text"></a> [consent\_screen\_text](#input\_consent\_screen\_text) | n/a | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `null` | no |
| <a name="input_direct_access_grants_enabled"></a> [direct\_access\_grants\_enabled](#input\_direct\_access\_grants\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_display_on_consent_screen"></a> [display\_on\_consent\_screen](#input\_display\_on\_consent\_screen) | n/a | `bool` | `false` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_exclude_session_state_from_auth_response"></a> [exclude\_session\_state\_from\_auth\_response](#input\_exclude\_session\_state\_from\_auth\_response) | n/a | `bool` | `false` | no |
| <a name="input_extra_config"></a> [extra\_config](#input\_extra\_config) | n/a | `map(string)` | `null` | no |
| <a name="input_frontchannel_logout_enabled"></a> [frontchannel\_logout\_enabled](#input\_frontchannel\_logout\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_frontchannel_logout_url"></a> [frontchannel\_logout\_url](#input\_frontchannel\_logout\_url) | n/a | `string` | `null` | no |
| <a name="input_full_scope_allowed"></a> [full\_scope\_allowed](#input\_full\_scope\_allowed) | n/a | `bool` | `false` | no |
| <a name="input_implicit_flow_enabled"></a> [implicit\_flow\_enabled](#input\_implicit\_flow\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_login_theme"></a> [login\_theme](#input\_login\_theme) | n/a | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | `null` | no |
| <a name="input_oauth2_device_authorization_grant_enabled"></a> [oauth2\_device\_authorization\_grant\_enabled](#input\_oauth2\_device\_authorization\_grant\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_oauth2_device_code_lifespan"></a> [oauth2\_device\_code\_lifespan](#input\_oauth2\_device\_code\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_oauth2_device_polling_interval"></a> [oauth2\_device\_polling\_interval](#input\_oauth2\_device\_polling\_interval) | n/a | `number` | `null` | no |
| <a name="input_pkce_code_challenge_method"></a> [pkce\_code\_challenge\_method](#input\_pkce\_code\_challenge\_method) | n/a | `string` | `null` | no |
| <a name="input_realm_id"></a> [realm\_id](#input\_realm\_id) | n/a | `string` | n/a | yes |
| <a name="input_root_url"></a> [root\_url](#input\_root\_url) | n/a | `string` | `null` | no |
| <a name="input_service_accounts_enabled"></a> [service\_accounts\_enabled](#input\_service\_accounts\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_standard_flow_enabled"></a> [standard\_flow\_enabled](#input\_standard\_flow\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_use_refresh_tokens"></a> [use\_refresh\_tokens](#input\_use\_refresh\_tokens) | n/a | `bool` | `true` | no |
| <a name="input_use_refresh_tokens_client_credentials"></a> [use\_refresh\_tokens\_client\_credentials](#input\_use\_refresh\_tokens\_client\_credentials) | n/a | `bool` | `false` | no |
| <a name="input_valid_post_logout_redirect_uris"></a> [valid\_post\_logout\_redirect\_uris](#input\_valid\_post\_logout\_redirect\_uris) | n/a | `list(string)` | `[]` | no |
| <a name="input_valid_redirect_uris"></a> [valid\_redirect\_uris](#input\_valid\_redirect\_uris) | n/a | `list(string)` | `[]` | no |
| <a name="input_web_origins"></a> [web\_origins](#input\_web\_origins) | n/a | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->