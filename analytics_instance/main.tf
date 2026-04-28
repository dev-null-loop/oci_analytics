resource "oci_analytics_analytics_instance" "this" {
  capacity {
    capacity_type  = var.capacity.capacity_type
    capacity_value = var.capacity.capacity_value
  }
  compartment_id     = var.compartment_id
  feature_set        = var.feature_set
  idcs_access_token  = var.idcs_access_token
  license_type       = var.license_type
  name               = var.name
  admin_user         = var.admin_user
  defined_tags       = var.defined_tags
  description        = var.description
  domain_id          = var.domain_id
  email_notification = var.email_notification
  feature_bundle     = var.feature_bundle
  freeform_tags      = var.freeform_tags
  kms_key_id         = var.kms_key_id
  dynamic "network_endpoint_details" {
    for_each = var.network_endpoint_details[*]
    iterator = ned
    content {
      network_endpoint_type      = ned.value.network_endpoint_type
      network_security_group_ids = ned.value.network_security_group_ids
      subnet_id                  = ned.value.subnet_id
      vcn_id                     = ned.value.vcn_id
      whitelisted_ips            = ned.value.whitelisted_ips
      whitelisted_services       = ned.value.whitelisted_services
      dynamic "whitelisted_vcns" {
        for_each = try(ned.value.whitelisted_vcns, [])
        iterator = wv
        content {
          id              = wv.value.id
          whitelisted_ips = wv.value.whitelisted_ips
        }
      }
    }
  }
  update_channel = var.update_channel
}
