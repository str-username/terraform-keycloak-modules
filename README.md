# Terraform keycloak modules
A Terraform modules for [Keycloak](https://www.keycloak.org/) that create:
- keycloak realms

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

# Authors
Module is maintained by [Str Username](https://github.com/str-username) any contributions are welcome.
