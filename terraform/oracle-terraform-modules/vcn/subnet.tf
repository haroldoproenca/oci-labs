#Module for Subnet
locals {
  anywhere = "0.0.0.0/0"
  dhcp_default_options = data.oci_core_dhcp_options.dhcp_options.options.0.id
}

module "public_subnet" {
  source = "./modules/subnet"
  count = var.create_public_subnet ? 1 : 0

  compartment_id = var.compartment_id
  subnet        = var.subnet
  enable_ipv6    = var.enable_ipv6
  vcn_id         = oci_core_vcn.vcn.id
  ig_route_id    = var.create_internet_gateway ? oci_core_route_table.ig[0].id : null

  freeform_tags = var.freeform_tags
}

resource "oci_core_subnet" "public_subnet" {
  count = var.create_public_subnet ? 1 : 0
  cidr_block     = var.public_subnet_cidr
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id


  defined_tags    = var.defined_tags
  dhcp_options_id = local.dhcp_default_options
  display_name    = var.public_subnet_name
  dns_label       = lookup(var.vcn_dns_label, "dns_label", null)
  freeform_tags   = var.freeform_tags
  prohibit_public_ip_on_vnic = false
  route_table_id             = var.ig_route_id
  security_list_ids          = null

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}
