terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "6.13.0"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "#{TERRAFORM_ORGANIZATION}#"
    token        = "#{TERRAFORM_TOKEN}#"

    workspaces {
      name = "#{TERRAFORM_CORE_INSTANCE_WORKSPACE}#"
    }
  }
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