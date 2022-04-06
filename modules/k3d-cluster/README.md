# k3d-cluster

## Description

A Terraform module for deploying a [k3d](https://github.com/k3d-io/k3d/) cluster on a local machine.

## Example

```terraform
module "k3d_cluster" {
  source = ".."
  name   = "my-cluster"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | >= 3.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.cluster](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.destroy](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agents"></a> [agents](#input\_agents) | The amount of a k3d cluster agents | `number` | `0` | no |
| <a name="input_api_port"></a> [api\_port](#input\_api\_port) | The port of a k3d cluster API server | `number` | `6500` | no |
| <a name="input_container_lb_port"></a> [container\_lb\_port](#input\_container\_lb\_port) | The port of a k3d cluster load balancer container | `number` | `80` | no |
| <a name="input_host_lb_port"></a> [host\_lb\_port](#input\_host\_lb\_port) | The port of a k3d cluster load balancer on a host machine | `number` | `8080` | no |
| <a name="input_k3s_version"></a> [k3s\_version](#input\_k3s\_version) | The version of k3s | `string` | `"1.22.7-k3s1"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of a k3d cluster | `string` | n/a | yes |
| <a name="input_servers"></a> [servers](#input\_servers) | The amount of a k3d cluster servers | `number` | `1` | no |

## Outputs

| Name | Description                                                |
|------|------------------------------------------------------------|
| <a name="output_agents"></a> [agents](#output\_agents) | The amount of a k3d cluster agents                         |
| <a name="output_api_port"></a> [api\_port](#output\_api\_port) | The port for a k3d cluster API server                      |
| <a name="output_container_lb_port"></a> [container\_lb\_port](#output\_container\_lb\_port) | The port for a k3d cluster load balancer container         |
| <a name="output_host_lb_port"></a> [host\_lb\_port](#output\_host\_lb\_port) | The port for a k3d cluster load balancer on a host machine |
| <a name="output_image"></a> [image](#output\_image) | The k3s image                                              |
| <a name="output_name"></a> [name](#output\_name) | The name of a k3d cluster                                  |
| <a name="output_servers"></a> [servers](#output\_servers) | The amount of a k3d cluster servers                        |
<!-- END_TF_DOCS -->