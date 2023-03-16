# Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl.
# 

variable "compartment_id" {}

variable "create_new_vcn" {
  default     = true
  description = "Creates a new Virtual Cloud Network (VCN). If false, the VCN OCID must be provided in the variable 'existent_vcn_ocid'."
}

variable "vcn_cidr" {
  default     = ["10.20.0.0/16"]
  description = "IPv4 CIDR Blocks for the Virtual Cloud Network (VCN). If use more than one block, separate them with comma. e.g.: 10.20.0.0/16,10.80.0.0/16"
}

variable "display_name" {
  default     = "Template"
  description = "Display name for the Virtual Cloud Network (VCN)."
}

variable "dns_label" {
  default     = "template"
  description = "Display name for the Virtual Cloud Network (VCN)."
}

variable "enable_ipv6" {
  default     = false
  description = "Whether IPv6 is enabled for the Virtual Cloud Network (VCN)."
}

variable "ipv6private_cidr_blocks" {
  default     = []
  description = "The list of one or more ULA or Private IPv6 CIDR blocks for the Virtual Cloud Network (VCN)."
}

variable "internet_gateway_display_name" {
  default     = "Internet Gateway"
  description = "Display name for the internet gateway"
}

variable "nat_gateway_display_name" {
  default     = "Internet Gateway"
  description = "Display name for the internet gateway"
}

variable "service_gateway_display_name" {
  default     = "Internet Gateway"
  description = "Display name for the internet gateway"
}

variable "create_internet_gateway" {
  default     = false
  description = "Create an internet gateway"
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

variable "public_ip_id" {
  default     = null
  description = "The OCID of the public IP the NAT gateway will use."
}

variable "create_nat_gateway" {
  default     = false
  description = "Create a NAT gateway"
}

variable "create_service_gateway" {
  default     = false
  description = "Create a service gateway"
}
