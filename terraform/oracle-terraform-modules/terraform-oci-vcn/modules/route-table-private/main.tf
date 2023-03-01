resource "oci_core_route_table" "route_table_template" {
  compartment_id = var.compartment_ocid
  vcn_id         = var.vcn_id
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags

  route_rules {
      description       = "Traffic to the internet"
      destination       = "0.0.0.0/0"
      destination_type  = "CIDR_BLOCK"
      network_entity_id = var.nat_gateway_id
    }

      route_rules {
      description       = "Traffic to OCI services"
      destination       = var.oci_all_services
      destination_type  = "SERVICE_CIDR_BLOCK"
      network_entity_id = var.service_gateway_id
    }
}
