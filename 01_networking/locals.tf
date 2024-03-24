locals {
  common_tags = {
    environment = var.tag_environment
    createdby   = "Terraform"
  }
}