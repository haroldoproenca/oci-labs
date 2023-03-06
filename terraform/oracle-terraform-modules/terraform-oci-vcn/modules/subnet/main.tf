resource "oci_core_route_table" "route_table_public" {
  count      = var.private_subnet ? 0 : 1
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.label_prefix == "none" ? "${var.display_name}-RT" : "${var.label_prefix}-${var.display_name}-RT"
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags

  route_rules {
      description       = "Traffic to/from internet"
      destination       = "0.0.0.0/0"
      destination_type  = "CIDR_BLOCK"
      network_entity_id = var.internet_gateway_id
    }
}

resource "oci_core_route_table" "route_table_private" {
  count      = var.private_subnet ? 1 : 0
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.label_prefix == "none" ? "${var.display_name}-RT" : "${var.label_prefix}-${var.display_name}-RT"
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

resource "oci_core_security_list" "security_list_template" {
  compartment_id = var.compartment_id
  display_name   = var.label_prefix == "none" ? "${var.display_name}-SL" : "${var.label_prefix}-${var.display_name}-SL"
  vcn_id         = var.vcn_id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags
 egress_security_rules {
      description      = "Allow communication with internet"
      destination      = "0.0.0.0/0"
      destination_type = "CIDR_BLOCK"
      protocol         = "all"
      stateless        = false
  }

  ingress_security_rules {
      description  = "Allow inbound SSH traffic"
      source       = "0.0.0.0/0"
      source_type  = "CIDR_BLOCK"
      protocol     = 6
      stateless    = false
      tcp_options {
        max = 22
        min = 22
        }
  }

  lifecycle {
    ignore_changes = [freeform_tags, defined_tags, egress_security_rules, ingress_security_rules]
  }
}

resource "oci_core_subnet" "subnet_template" {
  cidr_block     = var.cidr_block
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id

  defined_tags = var.defined_tags
  display_name = var.display_name
  freeform_tags = var.freeform_tags
  prohibit_public_ip_on_vnic = var.private_subnet
  route_table_id = var.private_subnet ? oci_core_route_table.route_table_private[0].id : oci_core_route_table.route_table_public[0].id
  security_list_ids = [oci_core_security_list.security_list_template.id]

  lifecycle {
    ignore_changes = [defined_tags, dns_label, freeform_tags]
  }
}

resource "oci_core_route_table_attachment" "route_table_attachment" {   
  subnet_id = oci_core_subnet.subnet_template.id
  route_table_id = var.private_subnet ? oci_core_route_table.route_table_private[0].id : oci_core_route_table.route_table_public[0].id
}
