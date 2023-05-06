resource "oci_core_subnet" "vm_subnet" {

  cidr_block     = var.vm_subnet_cidr_block
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.main_vcn.id

  defined_tags      = merge(local.common_tags)
  display_name      = var.vm_subnet_display_name
  security_list_ids = [oci_core_security_list.vm_sl.id]
}