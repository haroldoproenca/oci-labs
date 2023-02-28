resource "oci_core_nat_gateway" "nat_gateway" {
  count          = var.create_nat_gateway ? 1 : 0
  compartment_id = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.nat_gateway_display_name : "${var.label_prefix}-${var.nat_gateway_display_name}"

  freeform_tags = var.freeform_tags
  defined_tags  = var.defined_tags

  vcn_id = oci_core_vcn.vcn.id

  lifecycle {
    ignore_changes = [defined_tags, freeform_tags]
  }

}
