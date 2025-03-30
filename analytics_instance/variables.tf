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

# variable "feature_bundle"{
# description="(Optional) The feature set of an Analytics instance."
# variable "freeform_tags"{
# description="(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{"Department": "Finance"}`
# variable "kms_key_id"{
# description="(Optional) OCID of the Oracle Cloud Infrastructure Vault Key encrypting the customer data stored in this Analytics instance. A null value indicates Oracle managed default encryption.
# variable "network_endpoint_details"{
# description="(Optional) Base representation of a network endpoint.
#	variable "network_endpoint_type"{
# description="(Required) The type of network endpoint.
#	variable "network_security_group_ids"{
# description="(Applicable when network_endpoint_type=PRIVATE) Network Security Group OCIDs for an Analytics instance.
#	variable "subnet_id"{
# description="(Required when network_endpoint_type=PRIVATE) The subnet OCID for the private endpoint.
#	variable "vcn_id"{
# description="(Required when network_endpoint_type=PRIVATE) The VCN OCID for the private endpoint.
#	variable "whitelisted_ips"{
# description="(Applicable when network_endpoint_type=PUBLIC) Source IP addresses or IP address ranges in ingress rules.
#	variable "whitelisted_services"{
# description="(Applicable when network_endpoint_type=PUBLIC) Oracle Cloud Services that are allowed to access this Analytics instance.
#	variable "whitelisted_vcns"{
# description="(Applicable when network_endpoint_type=PUBLIC) Virtual Cloud Networks allowed to access this network endpoint.
#		variable "id"{
# description="(Required when network_endpoint_type=PUBLIC) The Virtual Cloud Network OCID.
#		variable "whitelisted_ips"{
# description="(Applicable when network_endpoint_type=PUBLIC) Source IP addresses or IP address ranges in ingress rules.
# variable "update_channel"{
# description="(Optional) (Updatable) Analytics instance update channel.
# variable "state"{
# description="(Optional) (Updatable) The target state for the Analytics Instance. Could be set to `ACTIVE` or `INACTIVE`.
