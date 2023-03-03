data "oci_core_vcn" "vcn" {
  vcn_id = oci_core_vcn.vcn[0].id
}
