data "oci_core_vcn" "vcn" {
  vcn_id = oci_core_vcn.vcn.id
}

data "oci_core_services" "all_services" {
  filter {
    name   = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
}
