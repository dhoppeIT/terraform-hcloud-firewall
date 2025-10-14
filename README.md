# terraform-hcloud-firewall

Terraform module to manage the following Hetzner Cloud resources:

* hcloud_firewall

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "hcloud_firewall" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-hcloud-firewall/local"
  version = "1.0.0"

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

```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | ~> 1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_firewall.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_to"></a> [apply\_to](#input\_apply\_to) | Resources the firewall should be assigned to | ```list( object( { label_selector = optional(string) server = optional(number) } ) )``` | `[]` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | User-defined labels (key-value pairs) should be created with | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Firewall | `string` | `null` | no |
| <a name="input_rule"></a> [rule](#input\_rule) | Configuration of a Rule from this Firewall | ```list( object( { direction = string protocol = string port = optional(string) source_ips = optional(list(string)) destination_ips = optional(list(string)) description = optional(string) } ) )``` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apply_to"></a> [apply\_to](#output\_apply\_to) | Configuration of the Applied Resources |
| <a name="output_id"></a> [id](#output\_id) | Unique ID of the Firewall |
| <a name="output_labels"></a> [labels](#output\_labels) | User-defined labels (key-value pairs) |
| <a name="output_name"></a> [name](#output\_name) | Name of the Firewall |
| <a name="output_rule"></a> [rule](#output\_rule) | Configuration of a Rule from this Firewall |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
