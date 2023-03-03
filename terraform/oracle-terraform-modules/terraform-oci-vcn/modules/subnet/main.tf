resource "oci_core_subnet" "subnet_template" {
  cidr_block     = var.cidr_block
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id

  defined_tags = var.defined_tags
  display_name = var.display_name
  freeform_tags = var.freeform_tags
  prohibit_public_ip_on_vnic = var.private_subnet
  route_table_id = var.route_table_id
  security_list_ids = var.security_list_ids


  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}
