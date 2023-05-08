locals {
  common_tags = {
    environment = var.tag_environment
    createdby   = "Terraform"
    createdon   = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
  }
  ipsec_id      = oci_core_ipsec.oci_ipsec_connection.id
  tunnel1_id    = data.oci_core_ipsec_connection_tunnels.oci_ipsec_connection_tunnels[0].id
  tunnel2_id    = data.oci_core_ipsec_connection_tunnels.oci_ipsec_connection_tunnels[1].id
  ipsec_ip1     = data.oci_core_ipsec_connection_tunnels.demo39t1-ipsec-tunnels.ip_sec_connection_tunnels[0].vpn_ip
  ipsec_ip2     = data.oci_core_ipsec_connection_tunnels.demo39t1-ipsec-tunnels.ip_sec_connection_tunnels[1].vpn_ip
}