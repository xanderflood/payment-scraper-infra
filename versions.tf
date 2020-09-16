terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
    postgresql = {
      source = "terraform-providers/postgresql"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  required_version = ">= 0.13"
}
