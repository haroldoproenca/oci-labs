data "oci_core_dhcp_options" "dhcp_options" {

  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
}


