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
| [keycloak_realm.this](https://registry.terraform.io/providers/mrparkers/keycloak/4.4.0/docs/resources/realm) | resource |
| [keycloak_realm_events.this](https://registry.terraform.io/providers/mrparkers/keycloak/4.4.0/docs/resources/realm_events) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_code_lifespan"></a> [access\_code\_lifespan](#input\_access\_code\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_access_code_lifespan_login"></a> [access\_code\_lifespan\_login](#input\_access\_code\_lifespan\_login) | n/a | `number` | `null` | no |
| <a name="input_access_code_lifespan_user_action"></a> [access\_code\_lifespan\_user\_action](#input\_access\_code\_lifespan\_user\_action) | n/a | `number` | `null` | no |
| <a name="input_access_token_lifespan"></a> [access\_token\_lifespan](#input\_access\_token\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_access_token_lifespan_for_implicit_flow"></a> [access\_token\_lifespan\_for\_implicit\_flow](#input\_access\_token\_lifespan\_for\_implicit\_flow) | n/a | `number` | `null` | no |
| <a name="input_account_theme"></a> [account\_theme](#input\_account\_theme) | n/a | `string` | `"keycloak.v2"` | no |
| <a name="input_action_token_generated_by_admin_lifespan"></a> [action\_token\_generated\_by\_admin\_lifespan](#input\_action\_token\_generated\_by\_admin\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_action_token_generated_by_user_lifespan"></a> [action\_token\_generated\_by\_user\_lifespan](#input\_action\_token\_generated\_by\_user\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_admin_events_details_enabled"></a> [admin\_events\_details\_enabled](#input\_admin\_events\_details\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_admin_events_enabled"></a> [admin\_events\_enabled](#input\_admin\_events\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_admin_theme"></a> [admin\_theme](#input\_admin\_theme) | n/a | `string` | `"keycloak.v2"` | no |
| <a name="input_attributes"></a> [attributes](#input\_attributes) | n/a | `map(any)` | `{}` | no |
| <a name="input_browser_flow"></a> [browser\_flow](#input\_browser\_flow) | n/a | `string` | `null` | no |
| <a name="input_client_authentication_flow"></a> [client\_authentication\_flow](#input\_client\_authentication\_flow) | n/a | `string` | `null` | no |
| <a name="input_client_session_idle_timeout"></a> [client\_session\_idle\_timeout](#input\_client\_session\_idle\_timeout) | n/a | `number` | `null` | no |
| <a name="input_client_session_max_lifespan"></a> [client\_session\_max\_lifespan](#input\_client\_session\_max\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_default_default_client_scopes"></a> [default\_default\_client\_scopes](#input\_default\_default\_client\_scopes) | n/a | `list(string)` | `null` | no |
| <a name="input_default_optional_client_scopes"></a> [default\_optional\_client\_scopes](#input\_default\_optional\_client\_scopes) | n/a | `list(string)` | `null` | no |
| <a name="input_default_signature_algorithm"></a> [default\_signature\_algorithm](#input\_default\_signature\_algorithm) | n/a | `string` | `"RS256"` | no |
| <a name="input_defenses_brute_force_detection"></a> [defenses\_brute\_force\_detection](#input\_defenses\_brute\_force\_detection) | n/a | <pre>object({<br>    enabled                          = bool<br>    permanent_lockout                = optional(bool)<br>    max_login_failures               = optional(number)<br>    wait_increment_seconds           = optional(string)<br>    quick_login_check_milli_seconds  = optional(string)<br>    minimum_quick_login_wait_seconds = optional(string)<br>    max_failure_wait_seconds         = optional(string)<br>    failure_reset_time_seconds       = optional(string)<br>  })</pre> | <pre>{<br>  "enabled": false,<br>  "failure_reset_time_seconds": 43200,<br>  "max_failure_wait_seconds": 30,<br>  "max_login_failures": 30,<br>  "minimum_quick_login_wait_seconds": 60,<br>  "permanent_lockout": false,<br>  "quick_login_check_milli_seconds": 1000,<br>  "wait_increment_seconds": 60<br>}</pre> | no |
| <a name="input_defenses_headers"></a> [defenses\_headers](#input\_defenses\_headers) | n/a | <pre>object({<br>    enabled                   = bool<br>    content_security_policy   = optional(string)<br>    referrer_policy           = optional(string)<br>    strict_transport_security = optional(string)<br>    x_content_type_options    = optional(string)<br>    x_frame_options           = optional(string)<br>    x_robots_tag              = optional(string)<br>    x_xss_protection          = optional(string)<br>  })</pre> | <pre>{<br>  "content_security_policy": "frame-src 'self'; frame-ancestors 'self'; object-src 'none';",<br>  "enabled": true,<br>  "referrer_policy": "no-referrer",<br>  "strict_transport_security": "max-age=31536000; includeSubDomains",<br>  "x_content_type_options": "nosniff",<br>  "x_frame_options": "SAMEORIGIN",<br>  "x_robots_tag": "none",<br>  "x_xss_protection": "1; mode=block"<br>}</pre> | no |
| <a name="input_direct_grant_flow"></a> [direct\_grant\_flow](#input\_direct\_grant\_flow) | n/a | `string` | `null` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | n/a | `string` | `null` | no |
| <a name="input_docker_authentication_flow"></a> [docker\_authentication\_flow](#input\_docker\_authentication\_flow) | n/a | `string` | `null` | no |
| <a name="input_duplicate_emails_allowed"></a> [duplicate\_emails\_allowed](#input\_duplicate\_emails\_allowed) | n/a | `bool` | `false` | no |
| <a name="input_edit_username_allowed"></a> [edit\_username\_allowed](#input\_edit\_username\_allowed) | n/a | `bool` | `false` | no |
| <a name="input_email_theme"></a> [email\_theme](#input\_email\_theme) | n/a | `string` | `"keycloak"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_enabled_event_types"></a> [enabled\_event\_types](#input\_enabled\_event\_types) | n/a | `set(string)` | `[]` | no |
| <a name="input_events_enabled"></a> [events\_enabled](#input\_events\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_events_expiration"></a> [events\_expiration](#input\_events\_expiration) | n/a | `number` | `0` | no |
| <a name="input_events_listeners"></a> [events\_listeners](#input\_events\_listeners) | n/a | `set(string)` | <pre>[<br>  "jboss-logging"<br>]</pre> | no |
| <a name="input_internal_id"></a> [internal\_id](#input\_internal\_id) | n/a | `string` | `null` | no |
| <a name="input_internationalization"></a> [internationalization](#input\_internationalization) | n/a | <pre>object({<br>    enabled           = bool<br>    supported_locales = list(string)<br>    default_locale    = string<br>  })</pre> | <pre>{<br>  "default_locale": null,<br>  "enabled": false,<br>  "supported_locales": null<br>}</pre> | no |
| <a name="input_login_theme"></a> [login\_theme](#input\_login\_theme) | n/a | `string` | `"keycloak"` | no |
| <a name="input_login_with_email_allowed"></a> [login\_with\_email\_allowed](#input\_login\_with\_email\_allowed) | n/a | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_oauth2_device_code_lifespan"></a> [oauth2\_device\_code\_lifespan](#input\_oauth2\_device\_code\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_oauth2_device_polling_interval"></a> [oauth2\_device\_polling\_interval](#input\_oauth2\_device\_polling\_interval) | n/a | `number` | `null` | no |
| <a name="input_offline_session_idle_timeout"></a> [offline\_session\_idle\_timeout](#input\_offline\_session\_idle\_timeout) | n/a | `number` | `null` | no |
| <a name="input_offline_session_max_lifespan"></a> [offline\_session\_max\_lifespan](#input\_offline\_session\_max\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_offline_session_max_lifespan_enabled"></a> [offline\_session\_max\_lifespan\_enabled](#input\_offline\_session\_max\_lifespan\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_otp_policy"></a> [otp\_policy](#input\_otp\_policy) | n/a | <pre>object({<br>    enabled           = bool<br>    type              = optional(string)<br>    algorithm         = optional(string)<br>    digits            = optional(number)<br>    initial_counter   = optional(number)<br>    look_ahead_window = optional(number)<br>    period            = optional(number)<br>  })</pre> | <pre>{<br>  "enabled": false<br>}</pre> | no |
| <a name="input_password_policy"></a> [password\_policy](#input\_password\_policy) | n/a | `number` | `null` | no |
| <a name="input_realm_events_enabled"></a> [realm\_events\_enabled](#input\_realm\_events\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_refresh_token_max_reuse"></a> [refresh\_token\_max\_reuse](#input\_refresh\_token\_max\_reuse) | n/a | `number` | `null` | no |
| <a name="input_registration_allowed"></a> [registration\_allowed](#input\_registration\_allowed) | n/a | `bool` | `false` | no |
| <a name="input_registration_email_as_username"></a> [registration\_email\_as\_username](#input\_registration\_email\_as\_username) | n/a | `bool` | `false` | no |
| <a name="input_registration_flow"></a> [registration\_flow](#input\_registration\_flow) | n/a | `string` | `null` | no |
| <a name="input_remember_me"></a> [remember\_me](#input\_remember\_me) | n/a | `bool` | `false` | no |
| <a name="input_reset_credentials_flow"></a> [reset\_credentials\_flow](#input\_reset\_credentials\_flow) | n/a | `string` | `null` | no |
| <a name="input_reset_password_allowed"></a> [reset\_password\_allowed](#input\_reset\_password\_allowed) | n/a | `bool` | `false` | no |
| <a name="input_revoke_refresh_token"></a> [revoke\_refresh\_token](#input\_revoke\_refresh\_token) | n/a | `bool` | `false` | no |
| <a name="input_security_defenses_enabled"></a> [security\_defenses\_enabled](#input\_security\_defenses\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_smtp_server"></a> [smtp\_server](#input\_smtp\_server) | n/a | <pre>object({<br>    enabled  = bool<br>    host     = string<br>    port     = optional(string, null)<br>    from     = string<br>    username = string<br>    password = string<br>  })</pre> | <pre>{<br>  "enabled": false,<br>  "from": null,<br>  "host": null,<br>  "password": null,<br>  "port": null,<br>  "username": null<br>}</pre> | no |
| <a name="input_ssl_required"></a> [ssl\_required](#input\_ssl\_required) | n/a | `string` | `"external"` | no |
| <a name="input_sso_session_idle_timeout"></a> [sso\_session\_idle\_timeout](#input\_sso\_session\_idle\_timeout) | n/a | `number` | `null` | no |
| <a name="input_sso_session_idle_timeout_remember_me"></a> [sso\_session\_idle\_timeout\_remember\_me](#input\_sso\_session\_idle\_timeout\_remember\_me) | n/a | `number` | `null` | no |
| <a name="input_sso_session_max_lifespan"></a> [sso\_session\_max\_lifespan](#input\_sso\_session\_max\_lifespan) | n/a | `number` | `null` | no |
| <a name="input_sso_session_max_lifespan_remember_me"></a> [sso\_session\_max\_lifespan\_remember\_me](#input\_sso\_session\_max\_lifespan\_remember\_me) | n/a | `number` | `null` | no |
| <a name="input_user_managed_access"></a> [user\_managed\_access](#input\_user\_managed\_access) | n/a | `bool` | `false` | no |
| <a name="input_verify_email"></a> [verify\_email](#input\_verify\_email) | n/a | `bool` | `false` | no |
| <a name="input_web_authn_policy"></a> [web\_authn\_policy](#input\_web\_authn\_policy) | n/a | <pre>object({<br>    web_authn_enabled                 = bool<br>    web_authn_passwordless_enabled    = bool<br>    relying_party_entity_name         = optional(string)<br>    relying_party_id                  = optional(string)<br>    signature_algorithms              = optional(set(string))<br>    attestation_conveyance_preference = optional(string)<br>    authenticator_attachment          = optional(string)<br>    require_resident_key              = optional(string)<br>    user_verification_requirement     = optional(string)<br>    create_timeout                    = optional(number)<br>    avoid_same_authenticator_register = optional(bool)<br>    acceptable_aaguids                = optional(set(string))<br>  })</pre> | <pre>{<br>  "web_authn_enabled": false,<br>  "web_authn_passwordless_enabled": false<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_realm_id"></a> [realm\_id](#output\_realm\_id) | n/a |
<!-- END_TF_DOCS -->