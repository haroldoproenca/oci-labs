#Default route table dmz
resource "oci_core_default_route_table" "hub_default_route_table" {
  manage_default_resource_id = oci_core_vcn.vcns["VCN_HUB"].default_route_table_id
  route_rules {
    network_entity_id = oci_core_internet_gateway.igws["IGW_HUB"].id
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
  }
  route_rules {
    network_entity_id = oci_core_drg.drgs["DRG_PRD01"].id
    destination       = local.vcn["VCN_PRD"].cidr_block
    destination_type  = "CIDR_BLOCK"
  }
  defined_tags = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
}

resource "oci_core_default_route_table" "prd_default_route_table" {
  manage_default_resource_id = oci_core_vcn.vcns["VCN_PRD"].default_route_table_id
  route_rules {
    network_entity_id = oci_core_drg.drgs["DRG_PRD01"].id
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
  }
  defined_tags = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
}
