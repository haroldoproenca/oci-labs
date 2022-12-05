## Copyright (c) 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

resource "oci_core_drg" "drgs" {
  for_each       = local.drg
  compartment_id = each.value.compartment_id
  display_name   = each.key
  defined_tags   = each.value.defined_tags
}

resource "oci_core_drg_attachment" "attachments" {
  for_each     = local.drg_attachment
  drg_id       = each.value.drg_id
  vcn_id       = each.value.vcn_id
  display_name = each.key
}
