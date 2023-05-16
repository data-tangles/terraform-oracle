resource "oci_core_cpe" "onprem_cpe" {
  #Required
  compartment_id = var.compartment_id
  display_name   = var.cpe_display_name
  ip_address     = var.cpe_ip_address
  freeform_tags  = merge(local.common_tags)
}

resource "oci_core_ipsec" "oci_ipsec_connection" {
  #Required
  compartment_id = var.compartment_id
  cpe_id         = oci_core_cpe.onprem_cpe.id
  drg_id         = oci_core_drg.main_vcn_drg.id

  static_routes             = [var.onprem_subnet_cidr_1, var.onprem_subnet_cidr_2]
  cpe_local_identifier      = var.cpe_ip_address
  cpe_local_identifier_type = "IP_ADDRESS"
  display_name              = var.ipsec_connection_display_name
}

data "oci_core_ipsec_connection_tunnels" "oci_ipsec_connection_tunnels" {
  ipsec_id = oci_core_ipsec.oci_ipsec_connection.id
}

resource "oci_core_ipsec_connection_tunnel_management" "oci_ipsec_tunnel_1" {
  ipsec_id      = oci_core_ipsec.oci_ipsec_connection.id
  display_name  = "oci-ipsec-tunnel-01"
  tunnel_id     = data.oci_core_ipsec_connection_tunnels.oci_ipsec_connection_tunnels.ip_sec_connection_tunnels[0].id
  routing       = "STATIC"
  ike_version   = "V1"
  shared_secret = var.ipsec_secret_tunnel_1
}

resource "null_resource" "wait" {
  depends_on = [oci_core_ipsec_connection_tunnel_management.oci_ipsec_tunnel_1]
  provisioner "local-exec" {
    command = "echo 'Wait between the configuration of the 2 tunnels'; sleep 20"
  }
}

resource "oci_core_ipsec_connection_tunnel_management" "oci_ipsec_tunnel_2" {
  depends_on    = [null_resource.wait]
  ipsec_id      = oci_core_ipsec.oci_ipsec_connection.id
  display_name  = "oci-ipsec-tunnel-02"
  tunnel_id     = data.oci_core_ipsec_connection_tunnels.oci_ipsec_connection_tunnels.ip_sec_connection_tunnels[1].id
  routing       = "STATIC"
  ike_version   = "V1"
  shared_secret = var.ipsec_secret_tunnel_2
}

