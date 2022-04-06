# k3d-iac-exercise

A technical task for one Israeli company

## The task

1. Write a Terraform module that uses the [k3d provider](https://registry.terraform.io/providers/3rein/k3d/latest/docs)
   to create a k3d cluster.

2. Then uses a [helm provider](https://registry.terraform.io/providers/hashicorp/helm/latest/docs) to deploy an
   application defined by [this helm chart](https://github.com/otomato-gh/broken-maskshop/tree/main/maskshop-chart).

3. Add a README.md file describing the pre-requisites for running the code to create all the resources.

Bonus points: The deployed application is broken. Please fix the chart so everything works and submit a pull request to
the original repo.

> Could not use the offered k3d provider because it has been deleted.
>
> Have tried to use
> [this one](https://registry.terraform.io/providers/pvotal-tech/k3d/latest) as an alternative. Unfortunately, it does not
> work properly. It uses the image `rancher/k3d-proxy:latest` for the `serverlb` container and is always restarting:
> it cannot find a file `/etc/confd/values.yaml`.
>
> Have had to use Terraform `null_resource` to run k3d CLI commands to manage the cluster. It uses
> `ghcr.io/k3d-io/k3d-proxy:5.4.1`.

## Prerequisites and running the code

To run the code you have to install the following tools:

- [terraform](https://www.terraform.io/downloads) - for managing the infrastructure code
- [Docker](https://www.docker.com/products/docker-desktop/) - for running containers
- [k3d](https://k3d.io/v5.4.1/#installation) - for running the cluster
- [git](https://git-scm.com/downloads) - for downloading a Helm chart from the repository

To run the code use the following commands:

```shell
terraform init
terraform apply -auto-approve
```

To destroy the environment, execute:

```shell
terraform destroy -auto-approve
```

## Infrastructure code

The infrastructure consists of two modules:

- [k3d-cluster](modules/k3d-cluster/README.md) - creates a k3d cluster
- [helm-release](modules/helm-release/README.md) - deploy a Helm chart to the cluster

The main code is [here](main.tf). Detailed documentation is [here](INFRASTRUCTURE.md)

## The chart fix

[Pull request](https://github.com/otomato-gh/broken-maskshop/pull/1)
