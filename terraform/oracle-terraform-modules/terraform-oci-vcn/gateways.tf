resource "oci_core_internet_gateway" "gateway" {
  count          = var.create_internet_gateway ? 1 : 0
  compartment_id = var.compartment_id
  display_name   = var.internet_gateway_display_name
  enabled        = var.internet_gateway_enabled
  vcn_id         = oci_core_vcn.vcn.id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags
}

resource "oci_core_nat_gateway" "gateway" {
  count          = var.create_nat_gateway ? 1 : 0
  block_traffic  = var.nat_gateway_block_traffic
  compartment_id = var.compartment_id
  display_name   = var.nat_gateway_display_name
  vcn_id         = oci_core_vcn.vcn.id
  public_ip_id   = var.nat_gateway_public_ip_id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags
}

resource "oci_core_service_gateway" "gateway" {
  count          = var.create_service_gateway ? 1 : 0
  compartment_id = var.compartment_id
  display_name   = var.service_gateway_display_name
  vcn_id         = oci_core_vcn.vcn.id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags

  services {
    service_id = lookup(data.oci_core_services.all_services.services[0], "id")
  }
}
