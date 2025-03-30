resource "oci_analytics_analytics_instance" "this" {
  capacity {
    capacity_type  = var.capacity.capacity_type
    capacity_value = var.capacity.capacity_value
  }
  compartment_id    = var.compartment_id
  feature_set       = var.feature_set
  idcs_access_token = var.idcs_access_token
  license_type      = var.license_type
  name              = var.name

  #Optional
  # admin_user         = var.analytics_instance_admin_user
  # defined_tags       = { "Operations.CostCenter" = "42" }
  # description        = var.analytics_instance_description
  # domain_id          = oci_identity_domain.test_domain.id
  # email_notification = var.analytics_instance_email_notification
  # feature_bundle     = var.analytics_instance_feature_bundle
  # freeform_tags      = { "Department" = "Finance" }
  # kms_key_id         = oci_kms_key.test_key.id
  # network_endpoint_details {
  #   #Required
  #   network_endpoint_type = var.analytics_instance_network_endpoint_details_network_endpoint_type

  #   #Optional
  #   network_security_group_ids = var.analytics_instance_network_endpoint_details_network_security_group_ids
  #   subnet_id                  = oci_core_subnet.test_subnet.id
  #   vcn_id                     = oci_core_vcn.test_vcn.id
  #   whitelisted_ips            = var.analytics_instance_network_endpoint_details_whitelisted_ips
  #   whitelisted_services       = var.analytics_instance_network_endpoint_details_whitelisted_services
  #   whitelisted_vcns {

  #     #Optional
  #     id              = var.analytics_instance_network_endpoint_details_whitelisted_vcns_id
  #     whitelisted_ips = var.analytics_instance_network_endpoint_details_whitelisted_vcns_whitelisted_ips
  #   }
  # }
  # update_channel = var.analytics_instance_update_channel
}
