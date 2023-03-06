
output "nat_gateway_id" {
  value       = var.create_nat_gateway ? oci_core_nat_gateway.gateway[0].id : null
  description = "The OCID of the NAT Gateway."
}
