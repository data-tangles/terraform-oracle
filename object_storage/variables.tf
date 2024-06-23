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

variable "bucket_name" {
  type        = string
  description = "Name of the OCI Bucket Object Storage"
}

variable "bucket_namespace" {
  type        = string
  description = "Namespace of the OCI Bucket Object Storage"
}





