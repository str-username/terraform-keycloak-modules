locals {
  helper = { for role in var.roles : role.name => role }
}

resource "keycloak_role" "this" {
  for_each    = local.helper
  realm_id    = var.realm_id
  name        = each.value.name
  client_id   = lookup(each.value, "client_id", null)
  description = lookup(each.value, "description", null)
  composite_roles   = lookup(each.value, "composite_roles", null)
  attributes  = lookup(each.value, "attributes", {})
}