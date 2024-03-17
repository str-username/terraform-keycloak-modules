# Terraform keycloak modules
A Terraform modules for [Keycloak](https://www.keycloak.org/) that create:
- keycloak realms
- keycloak oidc client
- keycloak client roles

This is tested and used with [keycloak 23.0.7](https://www.keycloak.org/docs/23.0.7/server_admin/)

# Usage
Follow the examples/** folder to see usage examples. For a quick start, this will create a simple realm with the basic 
settings that you would get by performing a similar operation through the UI:

```terraform
module "quick_start_realm" {
  source                    = "../../../modules/realm"
  name                      = "quick-start"
}
```

You can find out more in the docs for each of the modules:
- [realm](modules/realm/README.md)
- [oidc client](modules/clients/oidc/README.md)
- [client roles](modules/role/README.md)

Some examples that may help:
- [create realm](examples/realm/complete/main.tf)
- [create client oidc grafana](examples/clients/oidc/grafana/main.tf)
- [create client oidc grafana roles](examples/clients/oidc/grafana/main.tf)

# Authors
Module is maintained by [Str Username](https://github.com/str-username) any contributions are welcome.
