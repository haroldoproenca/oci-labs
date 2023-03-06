module "public_subnet" {
  count      = var.create_public_subnet ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.public_subnet_name : "${var.label_prefix}-${var.public_subnet_name}"
  cidr_block        = var.public_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = false

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id
  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")

  freeform_tags = var.freeform_tags
}



module "private_app" {
  count      = var.create_private_app ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_app_subnet_name : "${var.label_prefix}-${var.private_app_subnet_name}"
  cidr_block        = var.private_app_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id
  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")

  freeform_tags = var.freeform_tags
}

module "private_db" {
  count      = var.create_private_db ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_db_subnet_name : "${var.label_prefix}-${var.private_db_subnet_name}"
  cidr_block        = var.private_db_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id
  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")

  freeform_tags = var.freeform_tags
}

module "private_exacs_client" {
  count      = var.create_private_exacs ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_exacs_client_subnet_name : "${var.label_prefix}-${var.private_exacs_client_subnet_name}"
  cidr_block        = var.private_exacs_client_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id
  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")

  freeform_tags = var.freeform_tags
}

module "private_exacs_bkp" {
  count      = var.create_private_exacs ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_exacs_bkp_subnet_name : "${var.label_prefix}-${var.private_exacs_bkp_subnet_name}"
  cidr_block        = var.private_exacs_bkp_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id
  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")

  freeform_tags = var.freeform_tags
}

module "private_oke" {
  count      = var.create_private_oke ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_oke_subnet_name : "${var.label_prefix}-${var.private_oke_subnet_name}"
  cidr_block        = var.private_oke_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id
  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")

  freeform_tags = var.freeform_tags
}

module "private_gen1" {
  count      = var.create_private_gen1 ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_gen1_subnet_name : "${var.label_prefix}-${var.private_gen1_subnet_name}"
  cidr_block        = var.private_gen1_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id
  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")

  freeform_tags = var.freeform_tags
}

module "private_gen2" {
  count      = var.create_private_gen2 ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_gen2_subnet_name : "${var.label_prefix}-${var.private_gen2_subnet_name}"
  cidr_block        = var.private_gen2_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id
  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")

  freeform_tags = var.freeform_tags
}
