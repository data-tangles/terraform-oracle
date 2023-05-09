resource "oci_core_security_list" "vm_sl" {
  display_name   = var.vm_sl_name
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.main_vcn.id
  freeform_tags  = merge(local.common_tags)

  # Allow all inbound traffic within the VCN
  ingress_security_rules {
    description = "Allow inter subnet traffic"
    source      = var.vm_subnet_cidr_block
    protocol    = "all"
  }

  # Allow traffic from on prem
  ingress_security_rules {
    source   = var.on_prem_ip
    protocol = "all"
  }
  ingress_security_rules {
    source   = var.onprem_subnet_cidr_1
    protocol = "all"
  }

  ingress_security_rules {
    source   = var.onprem_subnet_cidr_2
    protocol = "all"
  }

  # Allow all outbound traffic from the VCN
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "all"
  }
}