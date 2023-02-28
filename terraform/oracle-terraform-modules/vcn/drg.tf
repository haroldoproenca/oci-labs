## Copyright (c) 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

resource "oci_core_drg" "drg" {
  count = var.create_drg ? 1 : 0
  compartment_id = var.compartment_id
  display_name   = var.drg_display_name
}

resource "oci_core_drg_attachment" "attachments" {
  count = var.create_drg ? 1 : 0
  drg_id       = oci_core_drg.drg.id
  vcn_id       = oci_core_vcn.vcn.id
  display_name = var.drg_attach_display_name
}
