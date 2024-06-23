locals {
  common_tags = {
    environment = var.tag_environment
    purpose     = "Backup Storage"
    createdby   = "Terraform"
  }
}