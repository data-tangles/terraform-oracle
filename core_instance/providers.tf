terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "9.1.0"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "binarybraids"

    workspaces {
      name = "terraform-oracle-core-instance"
    }
  }
}

provider "oci" {
  config_file_profile = "DEFAULT"
}

terraform {
  required_version = ">= 1.0"
}