resource "oci_analytics_analytics_instance_vanity_url" "this" {
  analytics_instance_id = var.analytics_instance_id
  ca_certificate        = var.ca_certificate
  hosts                 = var.hosts
  private_key           = var.private_key
  public_certificate    = var.public_certificate
  description           = var.description
  passphrase            = var.passphrase
}
