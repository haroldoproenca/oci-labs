resource "oci_core_nat_gateway" "ngws" {
  for_each       = local.ngw
  compartment_id = each.value.compartment_id
  vcn_id         = each.value.vcn_id
  display_name   = each.key
  defined_tags   = each.value.defined_tags
}
