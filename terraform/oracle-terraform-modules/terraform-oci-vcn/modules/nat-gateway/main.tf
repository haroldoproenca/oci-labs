resource "oci_core_nat_gateway" "gateway" {
  block_traffic  = false
  compartment_id = var.compartment_id
  display_name   = var.nat_gateway_display_name
  vcn_id         = var.vcn_id
  public_ip_id   = var.public_ip_id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags
}
