locals {
    vcn = {
    "VCN_HUB" = {
        cidr_block = "10.0.0.0/16"
        dns_label = "vcnhub"
        compartment_id = var.compartment_ocid
        defined_tags = {"${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }
    "VCN_SPOKE1" = {
        cidr_block = "10.1.0.0/16"
        dns_label = "vcnspoke1"
        compartment_id = var.compartment_ocid
        defined_tags = {"${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }
    }
}
