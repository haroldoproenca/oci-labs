resource "oci_core_route_table" "route_table_template" {
  compartment_id = var.compartment_ocid
  vcn_id         = var.vcn_id
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  defined_tags   = var.freeform_tags

#   dynamic "route_rules" {
#     for_each = var.route_rules
#     content {
#       description       = route_rules.value.description
#       destination       = route_rules.value.destination
#       destination_type  = route_rules.value.destination_type
#       network_entity_id = route_rules.value.network_entity_id
#     }
#   }
}
