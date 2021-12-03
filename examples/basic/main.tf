terraform {
  required_version = ">= 1.0.10"

  required_providers {
    nws = {
      source  = "nws/nws"
      version = "0.1.2"
    }
  }
}

module "ssh_keypair" {
  source = "../../src"

  name = var.name
  path = var.path
}
