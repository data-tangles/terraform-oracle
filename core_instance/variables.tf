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

variable "tag_purpose" {
  type        = string
  description = "Tag Value for Purpose"
}

variable "compartment_id" {
  type        = string
  description = "Compartment ID for Oracle Tenant"
}

variable "shape" {
  type        = string
  description = "Shape for Core Instance"
}

variable "instance_display_name" {
  type        = string
  description = "Shape for Core Instance"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for Core Instance"
}

variable "image_source_id" {
  type        = string
  description = "Image source ID for Core Instance"
}

variable "ssh_public_key" {
  type        = string
  description = "SSH Public Key for auth to Core Instance"
}



