terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "4.107.0"
    }
  }
  backend "remote" {}
}

provider "oci" {
  tenancy_ocid     = var.provider_tenancy_ocid
  user_ocid        = var.provider_user_ocid
  fingerprint      = var.provider_fingerprint
  private_key_path = var.provider_private_key_path
  region           = var.provider_region
}

terraform {
  required_version = ">= 1.0"
}

locals {
  common_tags = {
    environment = var.tag_environment
    createdby   = "Terraform"
    createdon   = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
  }
}