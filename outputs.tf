output "id" {
  description = "Unique ID of the Firewall"
  value       = hcloud_firewall.default.id
}

output "name" {
  description = "Name of the Firewall"
  value       = hcloud_firewall.default.name
}
