module "hcloud_firewall" {
  source  = "dhoppeIT/firewall/hcloud"
  version = "~> 0.1"

  name = local.name
  rule = local.rule
}
