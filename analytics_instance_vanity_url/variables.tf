variable "analytics_instance_id" {
  description = "(Required) The OCID of the AnalyticsInstance."
  type        = string
}

variable "ca_certificate" {
  description = "(Required) (Updatable) PEM CA certificate(s) for HTTPS connections. This may include multiple PEM certificates."
  type        = string
}

variable "hosts" {
  description = "(Required) List of fully qualified hostnames supported by this vanity URL definition (max of 3)."
  type        = list(string)
}

variable "private_key" {
  description = "(Required) (Updatable) PEM Private key for HTTPS connections."
  type        = string
  sensitive   = true
}

variable "public_certificate" {
  description = "(Required) (Updatable) PEM certificate for HTTPS connections."
  type        = string
}

variable "description" {
  description = "(Optional) Optional description."
  type        = string
  default     = null
}

variable "passphrase" {
  description = "(Optional) (Updatable) Passphrase for the PEM Private key (if any)."
  type        = string
  default     = null
  sensitive   = true
}
