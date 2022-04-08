terraform {
  required_version = ">= 1.1.5"

  required_providers {
    nws = {
      source  = "nws/nwscc"
      version = "0.0.1"
    }
  }
}

module "ssh_keypair" {
  source = "../../src"

  name = var.name
  path = var.path
}
