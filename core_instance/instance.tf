resource "tls_private_key" "oci_instance_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "local_file" "private_key" {
  content  = tls_private_key.oci_instance_key.private_key_pem
  filename = "sshkey"
}

resource "local_file" "public_key" {
  content  = tls_private_key.oci_instance_key.public_key_openssh
  filename = "sshkey.pub"
}

resource "oci_core_instance" "linux_instance" {
  compartment_id      = var.compartment_id
  availability_domain = var.availability_domain
  fault_domain        = var.fault_domain
  shape               = var.shape
  display_name        = var.instance_display_name

  create_vnic_details {
    subnet_id        = var.subnet_id
    display_name     = "${var.instance_display_name}-nic"
    assign_public_ip = true
    freeform_tags    = merge(local.common_tags)
  }

  source_details {
    source_type = "image"
    source_id   = var.image_source_id
  }

  metadata = {
    ssh_authorized_keys = file("${path.module}/${local_file.public_key.filename}")
  }

}