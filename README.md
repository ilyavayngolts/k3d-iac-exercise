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
