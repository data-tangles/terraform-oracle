locals {
  docker_tags = {
    environment = var.tag_environment
    purpose     = "Docker Host"
    createdby   = "Terraform"
  }

  mgmt_tags = {
    environment = var.tag_environment
    purpose     = "Management Node"
    createdby   = "Terraform"
  }

  k3s_tags = {
    environment = var.tag_environment
    purpose     = "k3s Node"
    createdby   = "Terraform"
  }
}

