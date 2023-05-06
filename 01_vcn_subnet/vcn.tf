resource "oci_core_vcn" "main_vcn" {
  compartment_id = var.compartment_id
  cidr_blocks    = var.vcn_cidr_blocks
  freeform_tags  = merge(local.common_tags)
  display_name   = var.vcn_display_name
}