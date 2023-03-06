# Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl.
# 

variable "compartment_id" {}
variable "oci_all_services" {}
variable "vcn_id" {}
variable "route_table_name" {}
variable "create_route_table" {
  default     = false
  description = "Creates a new route table. If false, bypass the creation."
}
variable "display_name" {
  default     = null
  description = "Display name for the subnet."
}

# Deployment Details + Freeform Tags + Defined Tags
variable "route_table_tags" {
  description = "Tags to be added to the route table resources"
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


variable "nat_gateway_id" {
    type = string
  description = "Tags to be added to the route table resources"
  default = "empty_nat_gateway_id"
}

variable "service_gateway_id" {
  type = string
  description = "Tags to be added to the route table resources"
  default = "empty_service_gateway_id"
}

variable "nat_gateway_display_name" {
  default     = "NAT Gateway"
  description = "Display name for the NAT gateway"
}

variable "service_gateway_display_name" {
  default     = "Internet Gateway"
  description = "Display name for the internet gateway"
}


