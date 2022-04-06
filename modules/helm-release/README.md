# helm-release

## Description

A Terraform module for deploying a Helm chart from a Git repository to a Kubernetes cluster.

## Example

```terraform
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "helm_release" {
  source = ".."

  name      = "hello"
  git_url   = "https://github.com/cloudecho/charts/"
  chart_dir = "charts/hello"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version  |
|------|----------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.5.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | >= 2.5.0 |
| <a name="provider_null"></a> [null](#provider\_null) | >= 3.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.app](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [null_resource.chart](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart_dir"></a> [chart\_dir](#input\_chart\_dir) | The directory with a Helm chart inside a repository | `string` | `""` | no |
| <a name="input_git_url"></a> [git\_url](#input\_git\_url) | The URL of a Git repository with a Helm chart | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of a Helm release | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_version"></a> [app\_version](#output\_app\_version) | The version of a Helm chart |
| <a name="output_chart_dir"></a> [chart\_dir](#output\_chart\_dir) | The directory with a Helm chart inside a repository |
| <a name="output_git_url"></a> [git\_url](#output\_git\_url) | The URL of a Git repository with a Helm chart |
| <a name="output_name"></a> [name](#output\_name) | The name of a Helm release |
| <a name="output_namespace"></a> [namespace](#output\_namespace) | The namespace with a Helm release |
| <a name="output_revision"></a> [revision](#output\_revision) | The revision of a Helm release |
<!-- END_TF_DOCS -->
