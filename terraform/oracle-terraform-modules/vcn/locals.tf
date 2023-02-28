#Module for Subnet
locals {
  anywhere = "0.0.0.0/0"
  dhcp_default_options = data.oci_core_dhcp_options.dhcp_options.options.0.id
}
