output "route_table_id" {
  value       = var.create_route_table ? oci_core_route_table.route_table_template.id : null
  description = "The OCID of the Route Table."
}
