# 01_vcn_subnet

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.2.1 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 4.119.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.119.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.wait](https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource) | resource |
| [oci_core_cpe.onprem_cpe](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_cpe) | resource |
| [oci_core_drg.main_vcn_drg](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_drg) | resource |
| [oci_core_drg_attachment.main_vcn_drg_attachment](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_drg_attachment) | resource |
| [oci_core_internet_gateway.main_internet_gateway](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_internet_gateway) | resource |
| [oci_core_ipsec.oci_ipsec_connection](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_ipsec) | resource |
| [oci_core_ipsec_connection_tunnel_management.oci_ipsec_tunnel_1](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_ipsec_connection_tunnel_management) | resource |
| [oci_core_ipsec_connection_tunnel_management.oci_ipsec_tunnel_2](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_ipsec_connection_tunnel_management) | resource |
| [oci_core_route_table.main_route_table](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_route_table) | resource |
| [oci_core_security_list.vm_sl](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_security_list) | resource |
| [oci_core_subnet.vm_subnet](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_subnet) | resource |
| [oci_core_vcn.main_vcn](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/resources/core_vcn) | resource |
| [oci_core_ipsec_connection_tunnels.oci_ipsec_connection_tunnels](https://registry.terraform.io/providers/oracle/oci/4.119.0/docs/data-sources/core_ipsec_connection_tunnels) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | Compartment ID for Oracle Tenant | `string` | n/a | yes |
| <a name="input_cpe_display_name"></a> [cpe\_display\_name](#input\_cpe\_display\_name) | Display name for the CPE | `string` | n/a | yes |
| <a name="input_cpe_ip_address"></a> [cpe\_ip\_address](#input\_cpe\_ip\_address) | IP address of the CPE | `string` | n/a | yes |
| <a name="input_drg_display_name"></a> [drg\_display\_name](#input\_drg\_display\_name) | Display name for the Dynamic Routing Gateway | `string` | n/a | yes |
| <a name="input_internet_gateway_display_name"></a> [internet\_gateway\_display\_name](#input\_internet\_gateway\_display\_name) | Display name for the Internet Gateway | `string` | n/a | yes |
| <a name="input_ipsec_connection_display_name"></a> [ipsec\_connection\_display\_name](#input\_ipsec\_connection\_display\_name) | Display name of IPSec connection | `string` | n/a | yes |
| <a name="input_ipsec_secret_tunnel_1"></a> [ipsec\_secret\_tunnel\_1](#input\_ipsec\_secret\_tunnel\_1) | Secret for 1st IPSec tunnel | `string` | n/a | yes |
| <a name="input_ipsec_secret_tunnel_2"></a> [ipsec\_secret\_tunnel\_2](#input\_ipsec\_secret\_tunnel\_2) | Secret for 2nd IPsec tunnel | `string` | n/a | yes |
| <a name="input_on_prem_ip"></a> [on\_prem\_ip](#input\_on\_prem\_ip) | Public IP of on prem environment | `string` | n/a | yes |
| <a name="input_onprem_subnet_cidr"></a> [onprem\_subnet\_cidr](#input\_onprem\_subnet\_cidr) | Subnet CIDR of on premise network | `string` | n/a | yes |
| <a name="input_provider_fingerprint"></a> [provider\_fingerprint](#input\_provider\_fingerprint) | Fingerprint for the key pair | `string` | n/a | yes |
| <a name="input_provider_private_key_path"></a> [provider\_private\_key\_path](#input\_provider\_private\_key\_path) | Private Key Path | `string` | n/a | yes |
| <a name="input_provider_region"></a> [provider\_region](#input\_provider\_region) | Oracle tenant region | `string` | n/a | yes |
| <a name="input_provider_tenancy_ocid"></a> [provider\_tenancy\_ocid](#input\_provider\_tenancy\_ocid) | Tenant OCID | `string` | n/a | yes |
| <a name="input_provider_user_ocid"></a> [provider\_user\_ocid](#input\_provider\_user\_ocid) | User OCID | `string` | n/a | yes |
| <a name="input_route_table_display_name"></a> [route\_table\_display\_name](#input\_route\_table\_display\_name) | Display name for the route table | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |
| <a name="input_vcn_cidr_blocks"></a> [vcn\_cidr\_blocks](#input\_vcn\_cidr\_blocks) | CIDR formatted block for VCN | `list(string)` | n/a | yes |
| <a name="input_vcn_display_name"></a> [vcn\_display\_name](#input\_vcn\_display\_name) | Display name for the VCN | `string` | n/a | yes |
| <a name="input_vm_sl_name"></a> [vm\_sl\_name](#input\_vm\_sl\_name) | Display name for the VM subnet Security List | `string` | n/a | yes |
| <a name="input_vm_subnet_cidr_block"></a> [vm\_subnet\_cidr\_block](#input\_vm\_subnet\_cidr\_block) | CIDR formatted block for VM subnet | `string` | n/a | yes |
| <a name="input_vm_subnet_display_name"></a> [vm\_subnet\_display\_name](#input\_vm\_subnet\_display\_name) | Display name for the VM subnet | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
