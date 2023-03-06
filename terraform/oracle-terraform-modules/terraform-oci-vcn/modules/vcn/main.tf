resource "oci_core_vcn" "vcn" {
  cidr_block     = var.vcn_cidr
  compartment_id = var.compartment_id
  display_name   = var.display_name
  dns_label      = var.dns_label
  is_ipv6enabled = var.enable_ipv6

  freeform_tags = var.freeform_tags
  defined_tags  = var.defined_tags

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}

resource "oci_core_internet_gateway" "gateway" {
  compartment_id = var.compartment_id
  display_name   = var.internet_gateway_display_name
  enabled        = true
  vcn_id         = oci_core_vcn.vcn.id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags
}

resource "oci_core_nat_gateway" "gateway" {
  block_traffic  = false
  compartment_id = var.compartment_id
  display_name   = var.nat_gateway_display_name
  vcn_id         = oci_core_vcn.vcn.id
  public_ip_id   = var.public_ip_id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags
}

resource "oci_core_service_gateway" "gateway" {
  compartment_id = var.compartment_id
  display_name   = var.service_gateway_display_name
  vcn_id         = oci_core_vcn.vcn.id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags

  services {
    service_id = lookup(data.oci_core_services.all_services.services[0], "id")
  }
}
