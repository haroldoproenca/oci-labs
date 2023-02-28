resource "oci_core_subnet" "public_subnet" {
  count = var.create_public_subnet ? 1 : 0
  cidr_block     = var.public_subnet_cidr
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.vcn.id


  defined_tags    = var.defined_tags
  
  display_name    = var.public_subnet_name
  #dns_label       = lookup(var.vcn_dns_label, "dns_label", null)
  freeform_tags   = var.freeform_tags
  prohibit_public_ip_on_vnic = false
#  route_table_id             = var.ig_route_id
  security_list_ids          = null

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}

resource "oci_core_subnet" "private_app" {
  count = var.create_private_app ? 1 : 0
  cidr_block     = var.private_app_subnet_cidr
  compartment_id = var.compartment_id
  vcn_id  = oci_core_vcn.vcn.id


  defined_tags    = var.defined_tags
  
  display_name    = var.private_app_subnet_name
  #dns_label       = lookup(var.vcn_dns_label, "dns_label", null)
  freeform_tags   = var.freeform_tags
  prohibit_public_ip_on_vnic = true
#  route_table_id             = var.nat_route_id
  security_list_ids          = null

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}

resource "oci_core_subnet" "private_db" {
  count = var.create_private_db ? 1 : 0
  cidr_block     = var.private_db_subnet_cidr
  compartment_id = var.compartment_id
  vcn_id  = oci_core_vcn.vcn.id


  defined_tags    = var.defined_tags
  
  display_name    = var.private_db_subnet_name
  #dns_label       = lookup(var.vcn_dns_label, "dns_label", null)
  freeform_tags   = var.freeform_tags
  prohibit_public_ip_on_vnic = true
#  route_table_id             = var.nat_route_id
  security_list_ids          = null

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}

resource "oci_core_subnet" "private_exacs_client" {
  count = var.create_private_exacs ? 1 : 0
  cidr_block     = var.private_exacs_client_subnet_cidr
  compartment_id = var.compartment_id
  vcn_id  = oci_core_vcn.vcn.id


  defined_tags    = var.defined_tags
  
  display_name    = var.private_exacs_client_subnet_name
  #dns_label       = lookup(var.vcn_dns_label, "dns_label", null)
  freeform_tags   = var.freeform_tags
  prohibit_public_ip_on_vnic = true
#  route_table_id             = var.nat_route_id
  security_list_ids          = null

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}

resource "oci_core_subnet" "private_exacs_bkp" {
  count = var.create_private_exacs ? 1 : 0
  cidr_block     = var.private_exacs_bkp_subnet_cidr
  compartment_id = var.compartment_id
  vcn_id  = oci_core_vcn.vcn.id


  defined_tags    = var.defined_tags
  
  display_name    = var.private_exacs_bkp_subnet_name
  #dns_label       = lookup(var.vcn_dns_label, "dns_label", null)
  freeform_tags   = var.freeform_tags
  prohibit_public_ip_on_vnic = true
#  route_table_id             = var.nat_route_id
  security_list_ids          = null

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}

resource "oci_core_subnet" "private_oke" {
  count = var.create_private_oke ? 1 : 0
  cidr_block     = var.private_oke_subnet_cidr
  compartment_id = var.compartment_id
  vcn_id  = oci_core_vcn.vcn.id


  defined_tags    = var.defined_tags
  
  display_name    = var.private_oke_subnet_name
  #dns_label       = lookup(var.vcn_dns_label, "dns_label", null)
  freeform_tags   = var.freeform_tags
  prohibit_public_ip_on_vnic = true
#  route_table_id             = var.nat_route_id
  security_list_ids          = null

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}

resource "oci_core_subnet" "private_gen1" {
  count = var.create_private_gen1 ? 1 : 0
  cidr_block     = var.private_gen1_subnet_cidr
  compartment_id = var.compartment_id
  vcn_id  = oci_core_vcn.vcn.id


  defined_tags    = var.defined_tags
  
  display_name    = var.private_gen1_subnet_name
  #dns_label       = lookup(var.vcn_dns_label, "dns_label", null)
  freeform_tags   = var.freeform_tags
  prohibit_public_ip_on_vnic = true
#  route_table_id             = var.nat_route_id
  security_list_ids          = null

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}

resource "oci_core_subnet" "private_gen2" {
  count = var.create_private_gen2 ? 1 : 0
  cidr_block     = var.private_gen2_subnet_cidr
  compartment_id = var.compartment_id
  vcn_id  = oci_core_vcn.vcn.id


  defined_tags    = var.defined_tags
  
  display_name    = var.private_gen2_subnet_name
  #dns_label       = lookup(var.vcn_dns_label, "dns_label", null)
  freeform_tags   = var.freeform_tags
  prohibit_public_ip_on_vnic = true
#  route_table_id             = var.nat_route_id
  security_list_ids          = null

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}
