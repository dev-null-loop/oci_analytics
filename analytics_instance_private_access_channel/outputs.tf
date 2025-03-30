output "ip_address" {
  description = "IP Address of the Private Access channel."
  value       = oci_analytics_analytics_instance_private_access_channel.this.ip_address
}
