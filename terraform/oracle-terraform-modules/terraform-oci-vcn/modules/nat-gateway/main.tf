resource "oci_core_nat_gateway" "gateway" {
  block_traffic  = var.nat_gateway_block_traffic
  compartment_id = var.compartment_ocid
  display_name   = var.nat_gateway_display_name
  vcn_id         = var.vcn_id
  public_ip_id   = var.nat_gateway_public_ip_id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags
}
