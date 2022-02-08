# terraform-hcloud-firewall

This example will manage the Hetzner Cloud firewall rules.

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-hcloud-firewall/blob/main/examples/default/rover.svg?raw=true" width="100%" height="100%">

## Usage

To run this example, you need to execute the following commands:

```shell
$ terraform init
$ terraform plan
$ terraform apply
```

:warning: This example may create resources that cost money. Execute the command
`terraform destroy` when the resources are no longer needed.

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_hcloud_firewall"></a> [hcloud\_firewall](#module\_hcloud\_firewall) | dhoppeIT/firewall/hcloud | ~> 0.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token"></a> [token](#input\_token) | The token used to authenticate with Hetzner Cloud | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_firewall_id"></a> [firewall\_id](#output\_firewall\_id) | Unique ID of the Firewall |
| <a name="output_firewall_name"></a> [firewall\_name](#output\_firewall\_name) | Name of the Firewall |

<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-hcloud-firewall/blob/main/LICENSE) for full details.
