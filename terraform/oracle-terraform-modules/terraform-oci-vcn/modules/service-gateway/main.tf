resource "oci_core_service_gateway" "gateway" {
  compartment_id = var.compartment_ocid
  display_name   = var.service_gateway_display_name
  vcn_id         = var.vcn_id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags

  services {
    service_id = lookup(data.oci_core_services.all_services.services[0], "id")
  }
}
