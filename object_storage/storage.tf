resource "oci_objectstorage_bucket" "oci_k3s_bucket" {
  compartment_id = var.compartment_id
  name           = var.bucket_name
  namespace      = var.bucket_namespace
  freeform_tags  = merge(local.common_tags)

  lifecycle {
    ignore_changes = [freeform_tags["createdon"]]
  }
}