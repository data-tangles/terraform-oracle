# 01_vcn_subnet

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 4.107.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.107.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_security_list.vm_sl](https://registry.terraform.io/providers/oracle/oci/4.107.0/docs/resources/core_security_list) | resource |
| [oci_core_subnet.vm_subnet](https://registry.terraform.io/providers/oracle/oci/4.107.0/docs/resources/core_subnet) | resource |
| [oci_core_vcn.main_vcn](https://registry.terraform.io/providers/oracle/oci/4.107.0/docs/resources/core_vcn) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | Compartment ID for Oracle Tenant | `string` | n/a | yes |
| <a name="input_on_prem_ip"></a> [on\_prem\_ip](#input\_on\_prem\_ip) | Public IP of on prem environment | `string` | n/a | yes |
| <a name="input_provider_fingerprint"></a> [provider\_fingerprint](#input\_provider\_fingerprint) | Fingerprint for the key pair | `string` | n/a | yes |
| <a name="input_provider_private_key_path"></a> [provider\_private\_key\_path](#input\_provider\_private\_key\_path) | Private Key Path | `string` | n/a | yes |
| <a name="input_provider_region"></a> [provider\_region](#input\_provider\_region) | Oracle tenant region | `string` | n/a | yes |
| <a name="input_provider_tenancy_ocid"></a> [provider\_tenancy\_ocid](#input\_provider\_tenancy\_ocid) | Tenant OCID | `string` | n/a | yes |
| <a name="input_provider_user_ocid"></a> [provider\_user\_ocid](#input\_provider\_user\_ocid) | User OCID | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |
| <a name="input_vcn_cidr_blocks"></a> [vcn\_cidr\_blocks](#input\_vcn\_cidr\_blocks) | CIDR formatted block for VCN | `list(string)` | n/a | yes |
| <a name="input_vcn_display_name"></a> [vcn\_display\_name](#input\_vcn\_display\_name) | Display name for the VCN | `string` | n/a | yes |
| <a name="input_vm_sl_name"></a> [vm\_sl\_name](#input\_vm\_sl\_name) | Display name for the VM subnet Security List | `string` | n/a | yes |
| <a name="input_vm_subnet_cidr_block"></a> [vm\_subnet\_cidr\_block](#input\_vm\_subnet\_cidr\_block) | CIDR formatted block for VM subnet | `string` | n/a | yes |
| <a name="input_vm_subnet_display_name"></a> [vm\_subnet\_display\_name](#input\_vm\_subnet\_display\_name) | Display name for the VM subnet | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
