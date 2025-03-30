variable "analytics_instance_id" {
  description = "(Required) The OCID of the AnalyticsInstance."
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) Display Name of the Private Access Channel."
  type        = string
}

variable "network_security_group_ids" {
  description = "(Optional) (Updatable) Network Security Group OCIDs for an Analytics instance."
  type        = list(string)
  default     = []
}

variable "private_source_dns_zones" {
  description = "(Required) (Updatable) List of Private Source DNS zones registered with Private Access Channel, where datasource hostnames from these dns zones / domains will be resolved in the peered VCN for access from Analytics Instance. Min of 1 is required and Max of 30 Private Source DNS zones can be registered."
  type = object({
    description = string
    dns_zone    = string
  })
}

variable "private_source_scan_hosts" {
  description = "(Optional) (Updatable) List of Private Source DB SCAN hosts registered with Private Access Channel for access from Analytics Instance. "
  type = list(object({
    description   = string
    scan_hostname = string
    scan_port     = number
  }))
  default = []
}

variable "subnet_id" {
  description = "(Required) (Updatable) OCID of the customer subnet connected to private access channel."
  type        = string
}

variable "vcn_id" {
  description = "(Required) (Updatable) OCID of the customer VCN peered with private access channel."
  type        = string
}
