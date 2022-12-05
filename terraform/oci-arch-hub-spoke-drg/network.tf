resource "oci_core_vcn" "vcns" {
  for_each       = local.vcn
  cidr_block     = each.value.cidr_block
  dns_label      = each.value.dns_label
  compartment_id = each.value.compartment_id
  display_name   = each.key
  defined_tags   = each.value.defined_tags
}

resource "oci_core_subnet" "subnet_privs" {
  for_each                   = local.subnet_priv
  cidr_block                 = each.value.cidr_block
  compartment_id             = each.value.compartment_id
  vcn_id                     = each.value.vcn_id
  display_name               = each.key
  defined_tags               = each.value.defined_tags
  prohibit_public_ip_on_vnic = each.value.prohibit_public_ip_on_vnic
}

resource "oci_core_subnet" "subnet_pubs" {
  for_each                   = local.subnet_pub
  cidr_block                 = each.value.cidr_block
  compartment_id             = each.value.compartment_id
  vcn_id                     = each.value.vcn_id
  display_name               = each.key
  defined_tags               = each.value.defined_tags
  prohibit_public_ip_on_vnic = each.value.prohibit_public_ip_on_vnic
}
