variable "provider_tenancy_ocid" {
  type        = string
  description = "Tenant OCID"
}

variable "provider_user_ocid" {
  type        = string
  description = "User OCID"
}

variable "provider_fingerprint" {
  type        = string
  description = "Fingerprint for the key pair"
}

variable "provider_private_key_path" {
  type        = string
  description = "Private Key"
}

variable "provider_region" {
  type        = string
  description = "Oracle tenant region"
}

variable "tag_environment" {
  type        = string
  description = "Tag Value for Environment"
}

variable "compartment_id" {
  type        = string
  description = "Compartment ID for Oracle Tenant"
}

variable "vcn_cidr_blocks" {
  type        = list(string)
  description = "CIDR formatted block for VCN"
}

variable "vcn_display_name" {
  type        = string
  description = "Display name for the VCN"
}

variable "internet_gateway_display_name" {
  type        = string
  description = "Display name for the Internet Gateway"
}

variable "route_table_display_name" {
  type        = string
  description = "Display name for the route table"
}

variable "drg_display_name" {
  type        = string
  description = "Display name for the Dynamic Routing Gateway"
}

variable "cpe_display_name" {
  type        = string
  description = "Display name for the CPE"
}

variable "cpe_ip_address" {
  type        = string
  description = "IP address of the CPE"
}

variable "onprem_subnet_cidr_1" {
  type        = string
  description = "Subnet CIDR of on premise network"
}

variable "onprem_subnet_cidr_2" {
  type        = string
  description = "Subnet CIDR of on premise network"
}

variable "ipsec_connection_display_name" {
  type        = string
  description = "Display name of IPSec connection"
}

variable "ipsec_secret_tunnel_1" {
  type        = string
  description = "Secret for 1st IPSec tunnel"
}

variable "ipsec_secret_tunnel_2" {
  type        = string
  description = "Secret for 2nd IPsec tunnel"
}

variable "vm_subnet_cidr_block" {
  type        = string
  description = "CIDR formatted block for VM subnet"
}

variable "vm_subnet_display_name" {
  type        = string
  description = "Display name for the VM subnet"
}

variable "vm_sl_name" {
  type        = string
  description = "Display name for the VM subnet Security List"
}