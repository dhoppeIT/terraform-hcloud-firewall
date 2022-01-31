terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.0"
    }
  }

  experiments      = [module_variable_optional_attrs]
  required_version = ">= 1.0"
}
