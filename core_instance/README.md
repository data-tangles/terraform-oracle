[![Build Status](https://dev.azure.com/qman-being/homelab/_apis/build/status%2Fterraform-oracle%2Fcore_instance%2FOracle%20Instance?branchName=refs%2Fpull%2F10%2Fmerge)](https://dev.azure.com/qman-being/homelab/_build/latest?definitionId=40&branchName=refs%2Fpull%2F10%2Fmerge)

# core_instance

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 4.119.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.119.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_instance.linux_instance](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_instance) | resource |
| [oci_core_instance.linux_instance_k3s_1](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_instance) | resource |
| [oci_core_instance.linux_instance_k3s_2](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_instance) | resource |
| [oci_core_instance.linux_management_instance](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_domain"></a> [availability\_domain](#input\_availability\_domain) | Availability Domain for Core Instance | `string` | n/a | yes |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | Compartment ID for Oracle Tenant | `string` | n/a | yes |
| <a name="input_docker_private_ip"></a> [docker\_private\_ip](#input\_docker\_private\_ip) | Private IP for Docker instance | `string` | n/a | yes |
| <a name="input_image_source_id"></a> [image\_source\_id](#input\_image\_source\_id) | Image source ID for Core Instance | `string` | n/a | yes |
| <a name="input_instance_display_name"></a> [instance\_display\_name](#input\_instance\_display\_name) | Shape for Core Instance | `string` | n/a | yes |
| <a name="input_instance_shape_config_memory_in_gbs"></a> [instance\_shape\_config\_memory\_in\_gbs](#input\_instance\_shape\_config\_memory\_in\_gbs) | Memory for core instance | `string` | n/a | yes |
| <a name="input_instance_shape_config_ocpus"></a> [instance\_shape\_config\_ocpus](#input\_instance\_shape\_config\_ocpus) | CPU for core instance | `string` | n/a | yes |
| <a name="input_k3s_1_instance_display_name"></a> [k3s\_1\_instance\_display\_name](#input\_k3s\_1\_instance\_display\_name) | Display name for k3s instance 1 | `string` | n/a | yes |
| <a name="input_k3s_1_private_ip"></a> [k3s\_1\_private\_ip](#input\_k3s\_1\_private\_ip) | Private IP for k3s instance 1 | `string` | n/a | yes |
| <a name="input_k3s_2_instance_display_name"></a> [k3s\_2\_instance\_display\_name](#input\_k3s\_2\_instance\_display\_name) | Display name for k3s instance 2 | `string` | n/a | yes |
| <a name="input_k3s_2_private_ip"></a> [k3s\_2\_private\_ip](#input\_k3s\_2\_private\_ip) | Private IP for k3s instance 2 | `string` | n/a | yes |
| <a name="input_k3s_availability_domain"></a> [k3s\_availability\_domain](#input\_k3s\_availability\_domain) | Availability Domain for the k3s Core Instance | `string` | n/a | yes |
| <a name="input_k3s_image_source_id"></a> [k3s\_image\_source\_id](#input\_k3s\_image\_source\_id) | Image Source for k3s | `string` | n/a | yes |
| <a name="input_k3s_shape"></a> [k3s\_shape](#input\_k3s\_shape) | Shape of the k3s Core Instance | `string` | n/a | yes |
| <a name="input_mgmt_instance_display_name"></a> [mgmt\_instance\_display\_name](#input\_mgmt\_instance\_display\_name) | Shape for Management Core Instance | `string` | n/a | yes |
| <a name="input_mgmt_private_ip"></a> [mgmt\_private\_ip](#input\_mgmt\_private\_ip) | Private IP for Management instance | `string` | n/a | yes |
| <a name="input_provider_fingerprint"></a> [provider\_fingerprint](#input\_provider\_fingerprint) | Fingerprint for the key pair | `string` | n/a | yes |
| <a name="input_provider_private_key_path"></a> [provider\_private\_key\_path](#input\_provider\_private\_key\_path) | Private Key Path | `string` | n/a | yes |
| <a name="input_provider_region"></a> [provider\_region](#input\_provider\_region) | Oracle tenant region | `string` | n/a | yes |
| <a name="input_provider_tenancy_ocid"></a> [provider\_tenancy\_ocid](#input\_provider\_tenancy\_ocid) | Tenant OCID | `string` | n/a | yes |
| <a name="input_provider_user_ocid"></a> [provider\_user\_ocid](#input\_provider\_user\_ocid) | User OCID | `string` | n/a | yes |
| <a name="input_shape"></a> [shape](#input\_shape) | Shape for Core Instance | `string` | n/a | yes |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | SSH Public Key for auth to Core Instance | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID for Core Instance | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |
| <a name="input_tag_purpose"></a> [tag\_purpose](#input\_tag\_purpose) | Tag Value for Purpose | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
