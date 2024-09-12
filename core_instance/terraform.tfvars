provider_tenancy_ocid               = "#{PROVIDER_TENANCY_OCID}#"
provider_user_ocid                  = "#{PROVIDER_USER_OCID}#"
provider_fingerprint                = "#{PROVIDER_FINGERPRINT}#"
provider_private_key_path           = "./keys/provider_key.pk"
provider_region                     = "#{PROVIDER_REGION}#"
tag_environment                     = "#{TAG_ENVIRONMENT}#"
compartment_id                      = "#{COMPARTMENT_ID}#"

# Management Node
mgmt_instance_display_name          = "vm-prod-mgmt-uk-01"
mgmt_private_ip                     = "192.168.1.10"

availability_domain                 = "#{AVAILABILITY_DOMAIN}#"
shape                               = "#{SHAPE}#"

subnet_id                           = "#{SUBNET_ID}#"
image_source_id                     = "#{IMAGE_SOURCE_ID}#"
ssh_public_key                      = "./keys/oci_instance_key.pub"
k3s_shape                           = "#{K3S_SHAPE}#"
k3s_availability_domain             = "#{K3S_AVAILABILITY_DOMAIN}#"
instance_shape_config_memory_in_gbs = "#{INSTANCE_SHAPE_CONFIG_MEMORY_IN_GBS}#"
instance_shape_config_ocpus         = "#{INSTANCE_SHAPE_CONFIG_OCPUS}#"

# Docker Host
docker_instance_display_name        = "vm-prod-docker-uk-01"
docker_private_ip                   = "192.168.1.11"

k3s_image_source_id                 = "#{K3S_IMAGE_SOURCE_ID}#"

# k3s Node 1
k3s_1_instance_display_name         = "vm-prod-kube-uk-01"
k3s_1_private_ip                    = "192.168.1.12"

# k3s Node 2
k3s_2_instance_display_name         = "vm-prod-kube-uk-02"
k3s_2_private_ip                    = "192.168.1.13"

# k3s Node 3
k3s_3_instance_display_name         = "vm-prod-kube-uk-03"
k3s_3_private_ip                    = "192.168.1.14"

