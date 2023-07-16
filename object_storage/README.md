# object_storage

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 5.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 5.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_objectstorage_bucket.oci_k3s_bucket](https://registry.terraform.io/providers/oracle/oci/5.4.0/docs/resources/objectstorage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name of the OCI Bucket Object Storage | `string` | n/a | yes |
| <a name="input_bucket_namespace"></a> [bucket\_namespace](#input\_bucket\_namespace) | Namespace of the OCI Bucket Object Storage | `string` | n/a | yes |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | Compartment ID for Oracle Tenant | `string` | n/a | yes |
| <a name="input_provider_fingerprint"></a> [provider\_fingerprint](#input\_provider\_fingerprint) | Fingerprint for the key pair | `string` | n/a | yes |
| <a name="input_provider_private_key_path"></a> [provider\_private\_key\_path](#input\_provider\_private\_key\_path) | Private Key Path | `string` | n/a | yes |
| <a name="input_provider_region"></a> [provider\_region](#input\_provider\_region) | Oracle tenant region | `string` | n/a | yes |
| <a name="input_provider_tenancy_ocid"></a> [provider\_tenancy\_ocid](#input\_provider\_tenancy\_ocid) | Tenant OCID | `string` | n/a | yes |
| <a name="input_provider_user_ocid"></a> [provider\_user\_ocid](#input\_provider\_user\_ocid) | User OCID | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |
| <a name="input_tag_purpose"></a> [tag\_purpose](#input\_tag\_purpose) | Tag Value for Purpose | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
