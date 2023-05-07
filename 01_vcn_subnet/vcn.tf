resource "oci_core_vcn" "main_vcn" {
  compartment_id = var.compartment_id
  cidr_blocks    = var.vcn_cidr_blocks
  freeform_tags  = merge(local.common_tags)
  display_name   = var.vcn_display_name
}

resource "oci_core_internet_gateway" "main_internet_gateway" {
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.main_vcn.id
    display_name = var.internet_gateway_display_name
    enabled = "true"
    freeform_tags = merge(local.common_tags)
    route_table_id = oci_core_route_table.main_route_table.id
}

resource "oci_core_route_table" "main_route_table" {
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.main_vcn.id
    display_name = var.route_table_display_name
    freeform_tags = merge(local.common_tags)
    route_rules {
        network_entity_id = oci_core_internet_gateway.main_internet_gateway.id
        description = "Internet"
        destination = "0.0.0.0/0"
        destination_type = "CIDR_BLOCK"
  }
}