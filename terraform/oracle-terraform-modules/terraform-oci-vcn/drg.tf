resource "oci_core_drg" "drg" {
  count          = var.create_drg ? 1 : 0
  compartment_id = var.compartment_id
  display_name   = var.drg_display_name
}

resource "oci_core_drg_attachment" "attachments" {
  depends_on = [ module.vcn , oci_core_drg.drg ]
  count        = var.create_drg ? 1 : 0
  drg_id       = oci_core_drg.drg[0].id
  vcn_id       = module.vcn.vcn_id
  display_name = var.drg_attach_display_name
}
