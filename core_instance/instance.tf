data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

resource "oci_core_instance" "linux_instance" {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
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