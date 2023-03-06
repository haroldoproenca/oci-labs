resource "oci_core_route_table" "route_table_public" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags

  route_rules {
      description       = "Traffic to/from internet"
      destination       = "0.0.0.0/0"
      destination_type  = "CIDR_BLOCK"
      network_entity_id = oci_core_internet_gateway.gateway.id
    }
}
