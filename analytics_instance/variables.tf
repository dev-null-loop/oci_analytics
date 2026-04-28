variable "admin_user" {
  description = "(Optional) user name of the authorized user."
  type        = string
  default     = null
}

variable "capacity" {
  description = "(Required) Service instance capacity metadata (e.g.: OLPU count, number of users, ...etc...). "
  type = object({
    capacity_type  = string
    capacity_value = number
  })
}

variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment."
  type        = string
}

variable "feature_set" {
  description = "(Required) Analytics feature set."
  type        = string
}

variable "idcs_access_token" {
  description = "(Required) IDCS access token identifying a stripe and service administrator user."
  type        = string
  default     = null
}

variable "license_type" {
  description = "(Required) (Updatable) The license used for the service."
  type        = string
}

variable "name" {
  description = "(Required) The name of the Analytics instance. This name must be unique in the tenancy and cannot be changed."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Optional description."
  type        = string
  default     = null
}

variable "domain_id" {
  description = "(Optional) domain id for which the user is authorized."
  type        = string
  default     = null
}

variable "email_notification" {
  description = "(Optional) (Updatable) Email address receiving notifications."
  type        = string
  default     = null
}

variable "feature_bundle" {
  description = "(Optional) The feature set of an Analytics instance."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "kms_key_id" {
  description = "(Optional) OCID of the Oracle Cloud Infrastructure Vault Key encrypting the customer data stored in this Analytics instance. A null value indicates Oracle managed default encryption."
  type        = string
  default     = null
}

variable "network_endpoint_details" {
  description = "(Optional) Base representation of a network endpoint."
  type = object({
    network_endpoint_type      = string
    network_security_group_ids = optional(list(string))
    subnet_id                  = string
    vcn_id                     = string
    whitelisted_ips            = optional(list(string))
    whitelisted_services       = optional(list(string))
    whitelisted_vcns = optional(list(object({
      id              = optional(string)
      whitelisted_ips = optional(list(string))
    })))
  })
  default = null
}

variable "update_channel" {
  description = "(Optional) (Updatable) Analytics instance update channel."
  type        = string
  default     = null
}
