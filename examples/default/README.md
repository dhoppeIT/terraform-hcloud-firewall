# Example

The configuration in this directory creates:

* hcloud_firewall

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
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
| <a name="module_hcloud_firewall"></a> [hcloud\_firewall](#module\_hcloud\_firewall) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Hetzner Cloud API endpoint, can be used to override the default API Endpoint | `string` | `"https://api.hetzner.cloud/v1"` | no |
| <a name="input_poll_function"></a> [poll\_function](#input\_poll\_function) | Configures the type of function to be used during the polling | `string` | `"exponential"` | no |
| <a name="input_poll_interval"></a> [poll\_interval](#input\_poll\_interval) | Configures the interval in which actions are polled by the client | `string` | `"500ms"` | no |
| <a name="input_token"></a> [token](#input\_token) | This is the Hetzner Cloud API Token, can also be specified with the HCLOUD\_TOKEN environment variable | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apply_to"></a> [apply\_to](#output\_apply\_to) | Configuration of the Applied Resources |
| <a name="output_id"></a> [id](#output\_id) | Unique ID of the Firewall |
| <a name="output_labels"></a> [labels](#output\_labels) | User-defined labels (key-value pairs) |
| <a name="output_name"></a> [name](#output\_name) | Name of the Firewall |
| <a name="output_rule"></a> [rule](#output\_rule) | Configuration of a Rule from this Firewall |
<!-- END_TF_DOCS -->
