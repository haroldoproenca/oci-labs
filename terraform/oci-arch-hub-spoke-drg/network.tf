resource "oci_core_vcn" "vcns" {
    for_each = local.vcn
    cidr_block     = each.value.cidr_block
    dns_label      = each.value.dns_label
    compartment_id = each.value.compartment_id
    display_name   = each.key
    defined_tags = each.value.defined_tags
}
