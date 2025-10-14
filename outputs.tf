output "id" {
  description = "Unique ID of the Firewall"
  value       = hcloud_firewall.this.id
}

output "name" {
  description = "Name of the Firewall"
  value       = hcloud_firewall.this.name
}

output "rule" {
  description = "Configuration of a Rule from this Firewall"
  value       = hcloud_firewall.this.rule
}

output "labels" {
  description = "User-defined labels (key-value pairs)"
  value       = hcloud_firewall.this.labels
}

output "apply_to" {
  description = "Configuration of the Applied Resources"
  value       = hcloud_firewall.this.apply_to
}
