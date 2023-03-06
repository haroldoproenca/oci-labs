resource "oci_core_security_list" "security_list_template" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
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
