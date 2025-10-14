output "id" {
  description = "Unique ID of the Firewall"
  value       = module.hcloud_firewall.id
}

output "name" {
  description = "Name of the Firewall"
  value       = module.hcloud_firewall.name
}

output "rule" {
  description = "Configuration of a Rule from this Firewall"
  value       = module.hcloud_firewall.rule
}

output "labels" {
  description = "User-defined labels (key-value pairs)"
  value       = module.hcloud_firewall.labels
}

output "apply_to" {
  description = "Configuration of the Applied Resources"
  value       = module.hcloud_firewall.apply_to
}
