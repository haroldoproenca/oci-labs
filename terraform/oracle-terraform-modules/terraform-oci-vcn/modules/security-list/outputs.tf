output "security_list_id" {
  value       = oci_core_security_list.security_list_template.id
  description = "The OCID of the security list."
}
