resource "oci_core_vcn" "vcn" {
  cidr_block     = var.vcn_cidr
  compartment_id = var.compartment_id
  display_name   = var.display_name
  dns_label      = var.dns_label
  is_ipv6enabled = var.enable_ipv6

  freeform_tags = var.freeform_tags
  defined_tags  = var.defined_tags

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}
