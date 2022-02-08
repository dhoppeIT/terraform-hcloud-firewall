output "firewall_id" {
  description = "Unique ID of the Firewall"
  value       = module.hcloud_firewall.id
}

output "firewall_name" {
  description = "Name of the Firewall"
  value       = module.hcloud_firewall.name
}
