terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.5.0"
    }

    null = {
      source  = "hashicorp/null"
      version = ">= 3.1.1"
    }
  }
}
