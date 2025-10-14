module "hcloud_firewall" {
  source = "../../"

  name = "default"
  rule = [
    {
      direction = "in"
      protocol  = "icmp"
      source_ips = [
        "0.0.0.0/0",
        "::/0"
      ]
    },
    {
      direction = "in"
      protocol  = "tcp"
      port      = "22"
      source_ips = [
        "0.0.0.0/0",
        "::/0"
      ]
    },
    {
      direction = "out"
      protocol  = "icmp"
      destination_ips = [
        "0.0.0.0/0",
        "::/0"
      ]
    },
    {
      direction = "out"
      protocol  = "tcp"
      port      = "53"
      destination_ips = [
        "0.0.0.0/0",
        "::/0"
      ]
    },
    {
      direction = "out"
      protocol  = "udp"
      port      = "53"
      destination_ips = [
        "0.0.0.0/0",
        "::/0"
      ]
    },
    {
      direction = "out"
      protocol  = "tcp"
      port      = "80"
      destination_ips = [
        "0.0.0.0/0",
        "::/0"
      ]
    },
    {
      direction = "out"
      protocol  = "tcp"
      port      = "443"
      destination_ips = [
        "0.0.0.0/0",
        "::/0"
      ]
    }
  ]
}
