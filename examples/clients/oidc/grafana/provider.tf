# ref: https://registry.terraform.io/providers/mrparkers/keycloak/4.4.1/docs#example-usage-client-credentials-grant
provider "keycloak" {
  client_id     = var.client_id
  client_secret = var.client_secret
  url           = var.url
}