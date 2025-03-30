resource "oci_analytics_analytics_instance_private_access_channel" "this" {
  analytics_instance_id = var.analytics_instance_id
  display_name          = var.display_name
  private_source_dns_zones {
    dns_zone    = var.private_source_dns_zones.dns_zone
    description = var.private_source_dns_zones.description
  }
  subnet_id                  = var.subnet_id
  vcn_id                     = var.vcn_id
  network_security_group_ids = var.network_security_group_ids
  dynamic "private_source_scan_hosts" {
    for_each = var.private_source_scan_hosts[*]
    iterator = pssh
    content {
      scan_hostname = pssh.value.scan_hostname
      scan_port     = pssh.value.scan_port
      description   = pssh.value.description
    }
  }
}
