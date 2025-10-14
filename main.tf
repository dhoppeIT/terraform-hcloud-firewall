resource "hcloud_firewall" "this" {
  name   = var.name
  labels = var.labels

  dynamic "rule" {
    for_each = var.rule

    content {
      direction       = rule.value.direction
      protocol        = rule.value.protocol
      port            = lookup(rule.value, "port", null)
      source_ips      = lookup(rule.value, "source_ips", [])
      destination_ips = lookup(rule.value, "destination_ips", [])
      description     = lookup(rule.value, "description", null)
    }
  }

  dynamic "apply_to" {
    for_each = var.apply_to

    content {
      label_selector = lookup(apply_to.value, "label_selector", null)
      server         = lookup(apply_to.value, "server", null)
    }
  }
}
