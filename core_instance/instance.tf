resource "oci_core_instance" "linux_instance" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
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
    ssh_authorized_keys = file(var.ssh_public_key)
  }

}