# Copyright (c) 2022 Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl.
# 

output "vcn_id" {
  value = data.oci_core_vcn.vcn.id
}
output "default_dhcp_options_id" {
  value = data.oci_core_vcn.vcn.default_dhcp_options_id
}
output "compartment_id" {
  value = data.oci_core_vcn.vcn.compartment_id
}
output "default_route_table_id" {
  value = data.oci_core_vcn.vcn.default_route_table_id
}
output "default_security_list_id" {
  value = data.oci_core_vcn.vcn.default_security_list_id
}
output "dns_label" {
  value = data.oci_core_vcn.vcn.dns_label
}
output "display_name" {
  value = data.oci_core_vcn.vcn.display_name
}
output "cidr_blocks" {
  value = data.oci_core_vcn.vcn.cidr_blocks
}
output "byoipv6cidr_blocks" {
  value = data.oci_core_vcn.vcn.byoipv6cidr_blocks
}
output "ipv6cidr_blocks" {
  value = data.oci_core_vcn.vcn.ipv6cidr_blocks
}
output "ipv6private_cidr_blocks" {
  value = data.oci_core_vcn.vcn.ipv6private_cidr_blocks
}
output "vcn_domain_name" {
  value = data.oci_core_vcn.vcn.vcn_domain_name
}

output "internet_gateway_id" {
  value       = oci_core_internet_gateway.gateway.id
  description = "The OCID of the Internet Gateway."
}

output "nat_gateway_id" {
  value       = oci_core_nat_gateway.gateway.id
  description = "The OCID of the NAT Gateway."
}

output "service_gateway_id" {
  value       = oci_core_service_gateway.gateway.id
  description = "The OCID of the Service Gateway."
}
