# Infrastructure code

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.5.0 |

## Providers

| Name | Version  |
|------|----------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | >= 2.5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_helm_release"></a> [helm\_release](#module\_helm\_release) | ./modules/helm-release | n/a |
| <a name="module_k3d_cluster"></a> [k3d\_cluster](#module\_k3d\_cluster) | ./modules/k3d-cluster | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agents"></a> [agents](#input\_agents) | The amount of a k3d cluster agents | `number` | `0` | no |
| <a name="input_api_port"></a> [api\_port](#input\_api\_port) | The port of a k3d cluster API server | `number` | `6500` | no |
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | The name of a Helm release | `string` | n/a | yes |
| <a name="input_chart_dir"></a> [chart\_dir](#input\_chart\_dir) | The directory with a Helm chart inside a repository | `string` | `""` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of a k3d cluster | `string` | n/a | yes |
| <a name="input_container_lb_port"></a> [container\_lb\_port](#input\_container\_lb\_port) | The port of a k3d cluster load balancer container | `number` | `80` | no |
| <a name="input_git_url"></a> [git\_url](#input\_git\_url) | The URL of a Git repository with a Helm chart | `string` | n/a | yes |
| <a name="input_host_lb_port"></a> [host\_lb\_port](#input\_host\_lb\_port) | The port of a k3d cluster load balancer on a host machine | `number` | `8080` | no |
| <a name="input_k3s_version"></a> [k3s\_version](#input\_k3s\_version) | The version of k3s | `string` | `"1.22.7-k3s1"` | no |
| <a name="input_servers"></a> [servers](#input\_servers) | The amount of a k3d cluster servers | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_helm_release_app_version"></a> [helm\_release\_app\_version](#output\_helm\_release\_app\_version) | The version of a Helm chart |
| <a name="output_helm_release_chart_dir"></a> [helm\_release\_chart\_dir](#output\_helm\_release\_chart\_dir) | The directory with a Helm chart inside a repository |
| <a name="output_helm_release_git_url"></a> [helm\_release\_git\_url](#output\_helm\_release\_git\_url) | The URL of a Git repository with a Helm chart |
| <a name="output_helm_release_name"></a> [helm\_release\_name](#output\_helm\_release\_name) | The name of a Helm release |
| <a name="output_helm_release_namespace"></a> [helm\_release\_namespace](#output\_helm\_release\_namespace) | The namespace with a Helm release |
| <a name="output_helm_release_revision"></a> [helm\_release\_revision](#output\_helm\_release\_revision) | The revision of a Helm release |
| <a name="output_k3d_cluster_agents"></a> [k3d\_cluster\_agents](#output\_k3d\_cluster\_agents) | The amount of a k3d cluster agents |
| <a name="output_k3d_cluster_api_port"></a> [k3d\_cluster\_api\_port](#output\_k3d\_cluster\_api\_port) | The port for a k3d cluster API server |
| <a name="output_k3d_cluster_container_lb_port"></a> [k3d\_cluster\_container\_lb\_port](#output\_k3d\_cluster\_container\_lb\_port) | The port for a k3d cluster load balancer container |
| <a name="output_k3d_cluster_host_lb_port"></a> [k3d\_cluster\_host\_lb\_port](#output\_k3d\_cluster\_host\_lb\_port) | The port for a k3d cluster load balancer on a host machine |
| <a name="output_k3d_cluster_image"></a> [k3d\_cluster\_image](#output\_k3d\_cluster\_image) | The k3s image |
| <a name="output_k3d_cluster_name"></a> [k3d\_cluster\_name](#output\_k3d\_cluster\_name) | The name of a k3d cluster |
| <a name="output_k3d_cluster_servers"></a> [k3d\_cluster\_servers](#output\_k3d\_cluster\_servers) | The amount of a k3d cluster servers |
<!-- END_TF_DOCS -->
