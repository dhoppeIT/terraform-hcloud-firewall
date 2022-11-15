# terraform-hcloud-firewall

Terraform module to manage the following Hetzner Cloud resource:

* hcloud_firewall

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-hcloud-firewall/blob/main/rover.svg?raw=true" width="100%" height="100%">

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "hcloud_firewall" {
  source  = "dhoppeIT/firewall/hcloud"
  version = "~> 0.1"

  name = "default"
  rule = [
    {
      direction  = "in"
      protocol   = "icmp"
      source_ips = ["0.0.0.0/0"]
    },
    {
      direction  = "in"
      protocol   = "tcp"
      port       = "22"
      source_ips = ["0.0.0.0/0"]
    },
    {
      direction       = "out"
      protocol        = "icmp"
      destination_ips = ["0.0.0.0/0"]
    },
    {
      direction       = "out"
      protocol        = "tcp"
      port            = "53"
      destination_ips = ["0.0.0.0/0"]
    },
    {
      direction       = "out"
      protocol        = "udp"
      port            = "53"
      destination_ips = ["0.0.0.0/0"]
    },
    {
      direction       = "out"
      protocol        = "tcp"
      port            = "80"
      destination_ips = ["0.0.0.0/0"]
    },
    {
      direction       = "out"
      protocol        = "tcp"
      port            = "443"
      destination_ips = ["0.0.0.0/0"]
    }
  ]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_firewall.default](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_to"></a> [apply\_to](#input\_apply\_to) | Resources the firewall should be assigned to | <pre>list(object({<br>    label_selector = optional(string)<br>    server         = optional(number)<br>  }))</pre> | `[]` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | User-defined labels (key-value pairs) should be created with | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Firewall | `string` | `null` | no |
| <a name="input_rule"></a> [rule](#input\_rule) | Configuration of a Rule from this Firewall | <pre>list(object({<br>    direction       = string<br>    protocol        = string<br>    port            = optional(string)<br>    source_ips      = optional(list(string))<br>    destination_ips = optional(list(string))<br>    description     = optional(string)<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Unique ID of the Firewall |
| <a name="output_name"></a> [name](#output\_name) | Name of the Firewall |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-hcloud-firewall/blob/main/LICENSE) for full details.
