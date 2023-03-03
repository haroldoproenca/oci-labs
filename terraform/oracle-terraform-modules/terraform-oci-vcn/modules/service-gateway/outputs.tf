output "service_gateway_id" {
  value       = var.create_service_gateway ? oci_core_service_gateway.gateway.id : null
  description = "The OCID of the Service Gateway."
}
