locals {
  vcn = {
    "VCN_HUB" = {
      cidr_block     = "10.0.0.0/16"
      dns_label      = "vcnhub"
      compartment_id = var.compartment_ocid
      defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }
    "VCN_PRD" = {
      cidr_block     = "10.1.0.0/16"
      dns_label      = "vcnprd"
      compartment_id = var.compartment_ocid
      defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }
  }

  subnet_priv = {
    "SB_APP_PRD" = {
      cidr_block                 = "10.1.0.0/19"
      compartment_id             = var.compartment_ocid
      vcn_id                     = oci_core_vcn.vcns["VCN_PRD"].id
      prohibit_public_ip_on_vnic = "true"
      defined_tags               = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }
    "SB_DB_PRD" = {
      cidr_block                 = "10.1.32.0/19"
      compartment_id             = var.compartment_ocid
      vcn_id                     = oci_core_vcn.vcns["VCN_PRD"].id
      prohibit_public_ip_on_vnic = "true"
      defined_tags               = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }
    "SB_OKE_PRD" = {
      cidr_block                 = "10.1.64.0/19"
      compartment_id             = var.compartment_ocid
      vcn_id                     = oci_core_vcn.vcns["VCN_PRD"].id
      prohibit_public_ip_on_vnic = "true"
      defined_tags               = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }

  }

  subnet_pub = {
    "SB_MGT_PRD" = {
      cidr_block                 = "10.0.32.0/19"
      compartment_id             = var.compartment_ocid
      vcn_id                     = oci_core_vcn.vcns["VCN_HUB"].id
      prohibit_public_ip_on_vnic = "false"
      defined_tags               = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }
    "SB_SVC_PRD" = {
      cidr_block                 = "10.0.0.0/19"
      compartment_id             = var.compartment_ocid
      vcn_id                     = oci_core_vcn.vcns["VCN_HUB"].id
      prohibit_public_ip_on_vnic = "false"
      defined_tags               = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }
  }

  drg = {
    "DRG_PRD01" = {
      compartment_id = var.compartment_ocid
      defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }
  }

  drg_attachment = {
    DRG_HUB_ATTACH = {
      drg_id = oci_core_drg.drgs["DRG_PRD01"].id
      vcn_id = oci_core_vcn.vcns["VCN_HUB"].id
    }
    DRG_PRD_ATTACH = {
      drg_id = oci_core_drg.drgs["DRG_PRD01"].id
      vcn_id = oci_core_vcn.vcns["VCN_PRD"].id
    }
  }

  ngw = {
    "NGW_PRD" = {
      compartment_id = var.compartment_ocid
      vcn_id         = oci_core_vcn.vcns["VCN_PRD"].id
      defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }
  }

  igw = {
    "IGW_HUB" = {
      compartment_id = var.compartment_ocid
      vcn_id         = oci_core_vcn.vcns["VCN_HUB"].id
      enabled        = "true"
      defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
    }

  }
}
