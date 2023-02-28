output "security_list_id" {
  value       = var.create_security_list ? oci_core_security_list.security_list_template[0].id : null
  description = "The OCID of the security list."
}
output "security_list_name" {
  value       = var.security_list_name
  description = "The reference name of the security list. (Not the display name)"
}
