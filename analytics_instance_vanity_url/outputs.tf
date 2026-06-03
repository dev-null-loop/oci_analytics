output "id" {
  description = "The composite OCID of the AnalyticsInstanceVanityUrl."
  value       = oci_analytics_analytics_instance_vanity_url.this.id
}

output "analytics_instance_id" {
  description = "The OCID of the AnalyticsInstance."
  value       = oci_analytics_analytics_instance_vanity_url.this.analytics_instance_id
}

output "hosts" {
  description = "List of fully qualified hostnames supported by this vanity URL definition (max of 3)."
  value       = oci_analytics_analytics_instance_vanity_url.this.hosts
}

output "description" {
  description = "Optional description."
  value       = oci_analytics_analytics_instance_vanity_url.this.description
}

output "public_certificate" {
  description = "PEM certificate for HTTPS connections."
  value       = oci_analytics_analytics_instance_vanity_url.this.public_certificate
}
