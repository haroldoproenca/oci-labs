variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
}

variable "oci_all_services" {}

variable "cidr_block" {
  description = "Subnets to be created"
  type        = string
}

variable "display_name" {
  description = "Display Name"
  type        = string
}

variable "security_list_ids" {
  type        = set(string)
  default     = null
  description = "The OCID of the set of DHCP options the subnet will use. If you don't specify a set of options, the subnet will use the VCN's default set. For more information about DHCP options, see [Managing DHCP Options]."
}

variable "enable_ipv6" {
  description = "Enable IPV6"
  type        = bool
  default     = false
}

variable "private_subnet" {
  description = "Check if is Private Subnet"
  type        = bool
  default     = true
}

variable "vcn_id" {
  description = "VCN ID"
  type        = string

}


variable "internet_gateway_id" {}
variable "nat_gateway_id" {}
variable "service_gateway_id" {}

variable "defined_tags" {
  description = "predefined and scoped to a namespace to tag the resources created using defined tags."
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "simple key-value pairs to tag the created resources using freeform OCI Free-form tags."
  type        = map(any)
  default = {
    terraformed = "Please do not edit manually"
    module      = "oracle-terraform-modules/vcn/oci"
  }
}

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = "none"
}
