terraform {
  required_version = ">= 0.13.1"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.1.1"
    }
  }
}
