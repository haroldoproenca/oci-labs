resource "oci_core_internet_gateway" "gateway" {
  compartment_id = var.compartment_id
  display_name   = var.internet_gateway_display_name
  enabled        = true
  vcn_id         = var.vcn_id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags
}
