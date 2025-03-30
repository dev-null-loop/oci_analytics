output "id" {
  description = "The resource OCID"
  value       = oci_analytics_analytics_instance.this.id
}

output "service_url" {
  description = "URL of the Analytics service"
  value       = oci_analytics_analytics_instance.this.service_url
}
