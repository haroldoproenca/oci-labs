output "route_table_id" {
  value       = oci_core_route_table.route_table_public.id
  description = "The OCID of the Route Table."
}
