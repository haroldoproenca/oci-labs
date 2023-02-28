data "oci_core_services" "all_oci_services" {
  filter {
    name   = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
  count = var.create_service_gateway ? 1 : 0
}

resource "oci_core_service_gateway" "service_gateway" {
  count          = var.create_service_gateway ? 1 : 0
  compartment_id = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.service_gateway_display_name : "${var.label_prefix}-${var.service_gateway_display_name}"

  freeform_tags = var.freeform_tags
  defined_tags  = var.defined_tags
  services {
    service_id = lookup(data.oci_core_services.all_oci_services[0].services[0], "id")
  }

  vcn_id = oci_core_vcn.vcn.id

  lifecycle {
    ignore_changes = [defined_tags, freeform_tags]
  }
}
