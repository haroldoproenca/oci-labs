variable "compartment_ocid" {}
variable "vcn_id" {}
variable "security_list_name" {}
variable "create_security_list" {
  default     = false
  description = "Creates a new security list. If false, bypass the creation."
}
variable "display_name" {
  default     = null
  description = "Display name for the security list."
}
variable "egress_security_rules" {
  type = list(object({
    description      = string
    destination      = string
    destination_type = string
    protocol         = string
    stateless        = bool
    tcp_options = object({
      max = number
      min = number
      source_port_range = object({
        max = number
        min = number
      })
    })
    udp_options = object({
      max = number
      min = number
      source_port_range = object({
        max = number
        min = number
      })
    })
    icmp_options = object({
      type = number
      code = number
    })
  }))
  default = []
}

variable "ingress_security_rules" {
  type = list(object({
    description = string
    source      = string
    source_type = string
    protocol    = string
    stateless   = bool
    tcp_options = object({
      max = number
      min = number
      source_port_range = object({
        max = number
        min = number
      })
    })
    udp_options = object({
      max = number
      min = number
      source_port_range = object({
        max = number
        min = number
      })
    })
    icmp_options = object({
      type = number
      code = number
    })
  }))
  default = []
}

variable "security_list_tags" {
  description = "Tags to be added to the security list resources"
}

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
