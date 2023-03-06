resource "oci_core_service_gateway" "gateway" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
  vcn_id         = var.vcn_id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags

  services {
    service_id = lookup(data.oci_core_services.all_services.services[0], "id")
  }

  count = var.create_service_gateway ? 1 : 0
}
