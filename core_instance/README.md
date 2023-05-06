# core_instance

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.4.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 4.107.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | 4.0.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.4.0 |
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.107.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.private_key](https://registry.terraform.io/providers/hashicorp/local/2.4.0/docs/resources/file) | resource |
| [local_file.public_key](https://registry.terraform.io/providers/hashicorp/local/2.4.0/docs/resources/file) | resource |
| [oci_core_instance.linux_instance](https://registry.terraform.io/providers/oracle/oci/4.107.0/docs/resources/core_instance) | resource |
| [tls_private_key.oci_instance_key](https://registry.terraform.io/providers/hashicorp/tls/4.0.4/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_domain"></a> [availability\_domain](#input\_availability\_domain) | Availability Domain for Core Instance | `string` | n/a | yes |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | Compartment ID for Oracle Tenant | `string` | n/a | yes |
| <a name="input_fault_domain"></a> [fault\_domain](#input\_fault\_domain) | Fault Domain for Core Instance | `string` | n/a | yes |
| <a name="input_image_source_id"></a> [image\_source\_id](#input\_image\_source\_id) | Image source ID for Core Instance | `string` | n/a | yes |
| <a name="input_instance_display_name"></a> [instance\_display\_name](#input\_instance\_display\_name) | Shape for Core Instance | `string` | n/a | yes |
| <a name="input_provider_fingerprint"></a> [provider\_fingerprint](#input\_provider\_fingerprint) | Fingerprint for the key pair | `string` | n/a | yes |
| <a name="input_provider_private_key_path"></a> [provider\_private\_key\_path](#input\_provider\_private\_key\_path) | Private Key Path | `string` | n/a | yes |
| <a name="input_provider_region"></a> [provider\_region](#input\_provider\_region) | Oracle tenant region | `string` | n/a | yes |
| <a name="input_provider_tenancy_ocid"></a> [provider\_tenancy\_ocid](#input\_provider\_tenancy\_ocid) | Tenant OCID | `string` | n/a | yes |
| <a name="input_provider_user_ocid"></a> [provider\_user\_ocid](#input\_provider\_user\_ocid) | User OCID | `string` | n/a | yes |
| <a name="input_shape"></a> [shape](#input\_shape) | Shape for Core Instance | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID for Core Instance | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |
| <a name="input_tag_purpose"></a> [tag\_purpose](#input\_tag\_purpose) | Tag Value for Purpose | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
