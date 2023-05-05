resource "oci_core_security_list" "vm_sl" {
  display_name   = var.vm_sl_name
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.main_vcn.id

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

  # Allow all outbound traffic from the VCN
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "all"
  }
}