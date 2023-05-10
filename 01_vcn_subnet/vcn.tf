resource "oci_core_vcn" "main_vcn" {
  compartment_id = var.compartment_id
  cidr_blocks    = var.vcn_cidr_blocks
  freeform_tags  = merge(local.common_tags)
  display_name   = var.vcn_display_name
}

resource "oci_core_nat_gateway" "main_nat_gateway" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.main_vcn.id
    display_name = var.nat_gateway_display_name
    freeform_tags = merge(local.common_tags)
}

resource "oci_core_route_table" "main_route_table" {
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.main_vcn.id
    display_name = var.route_table_display_name
    freeform_tags = merge(local.common_tags)
    route_rules {
        network_entity_id = oci_core_nat_gateway.main_nat_gateway.id
        description = "Internet"
        destination = "0.0.0.0/0"
        destination_type = "CIDR_BLOCK"
    }
    route_rules {
        network_entity_id = oci_core_drg.main_vcn_drg.id
        description = "On-Premise"
        destination = var.onprem_subnet_cidr_1
        destination_type = "CIDR_BLOCK"
    }
    route_rules {
        network_entity_id = oci_core_drg.main_vcn_drg.id
        description = "On-Premise"
        destination = var.onprem_subnet_cidr_2
        destination_type = "CIDR_BLOCK"
    }
}

resource "oci_core_drg" "main_vcn_drg" {
  compartment_id = var.compartment_id
  display_name   = var.drg_display_name
  freeform_tags  = merge(local.common_tags)
}

resource "oci_core_drg_attachment" "main_vcn_drg_attachment" {
  drg_id        = oci_core_drg.main_vcn_drg.id
  vcn_id        = oci_core_vcn.main_vcn.id
  freeform_tags = merge(local.common_tags)
}