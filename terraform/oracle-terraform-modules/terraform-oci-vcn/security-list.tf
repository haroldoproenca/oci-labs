module "public_subnet_sl" {
  count  = var.create_public_subnet ? 1 : 0
  source = "./modules/security-list"

  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  display_name = "${var.public_subnet_name}_sl"
}

module "private_app_sl" {
  count  = var.create_private_app ? 1 : 0
  source = "./modules/security-list"

  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  display_name = "${var.private_app_subnet_name}_sl"
}

module "private_db_sl" {
  count  = var.create_private_db ? 1 : 0
  source = "./modules/security-list"

  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  display_name = "${var.private_db_subnet_name}_sl"
}

module "private_exacs_client_sl" {
  count  = var.create_private_exacs ? 1 : 0
  source = "./modules/security-list"

  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  display_name = "${var.private_exacs_client_subnet_name}_sl"
}

module "private_exacs_bkp_sl" {
  count  = var.create_private_exacs ? 1 : 0
  source = "./modules/security-list"

  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  display_name = "${var.private_exacs_bkp_subnet_name}_sl"
}

module "private_oke_sl" {
  count  = var.create_private_oke ? 1 : 0
  source = "./modules/security-list"

  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  display_name = "${var.private_oke_subnet_name}_sl"
}

module "private_gen1_sl" {
  count  = var.create_private_gen1 ? 1 : 0
  source = "./modules/security-list"

  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  display_name = "${var.private_gen1_subnet_name}_sl"
}

module "private_gen2_sl" {
  count  = var.create_private_gen2 ? 1 : 0
  source = "./modules/security-list"

  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  display_name = "${var.private_gen2_subnet_name}_sl"
}

