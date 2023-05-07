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
  description = "Private Key Path"
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

variable "on_prem_ip" {
  type        = string
  description = "Public IP of on prem environment"
}






