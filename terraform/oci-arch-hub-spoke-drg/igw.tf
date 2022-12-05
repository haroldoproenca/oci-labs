resource "oci_core_internet_gateway" "igws" {
  for_each       = local.igw
  compartment_id = each.value.compartment_id
  vcn_id         = each.value.vcn_id
  enabled        = each.value.enabled
  display_name   = each.key
  defined_tags   = each.value.defined_tags
}
