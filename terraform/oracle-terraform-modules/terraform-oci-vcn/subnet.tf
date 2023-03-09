module "public_subnet" {
  count      = var.create_public_subnet ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  sn_display_name   = "${var.public_subnet_name}-SN"
  rt_display_name   = "${var.public_subnet_name}-RT"
  sl_display_name   = "${var.public_subnet_name}-SL" 
  cidr_block        = var.public_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = false

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id

  freeform_tags = var.freeform_tags
}

module "private_app" {
  count      = var.create_private_app ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  sn_display_name   = "${var.private_app_subnet_name}-SN"
  rt_display_name   = "${var.private_app_subnet_name}-RT"
  sl_display_name   = "${var.private_app_subnet_name}-SL" 
  cidr_block        = var.private_app_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id

  freeform_tags = var.freeform_tags
}

module "private_db" {
  count      = var.create_private_db ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  sn_display_name   = "${var.private_db_subnet_name}-SN"
  rt_display_name   = "${var.private_db_subnet_name}-RT"
  sl_display_name   = "${var.private_db_subnet_name}-SL" 
  cidr_block        = var.private_db_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id

  freeform_tags = var.freeform_tags
}

module "private_exacs_client" {
  count      = var.create_private_exacs ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  sn_display_name   = "${var.private_exacs_client_subnet_name}-SN"
  rt_display_name   = "${var.private_exacs_client_subnet_name}-RT"
  sl_display_name   = "${var.private_exacs_client_subnet_name}-SL" 
  cidr_block        = var.private_exacs_client_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id

  freeform_tags = var.freeform_tags
}

module "private_exacs_bkp" {
  count      = var.create_private_exacs ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  sn_display_name   = "${var.private_exacs_bkp_subnet_name}-SN"
  rt_display_name   = "${var.private_exacs_bkp_subnet_name}-RT"
  sl_display_name   = "${var.private_exacs_bkp_subnet_name}-SL" 
  cidr_block        = var.private_exacs_bkp_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id

  freeform_tags = var.freeform_tags
}

module "private_oke" {
  count      = var.create_private_oke ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  sn_display_name   = "${var.private_oke_subnet_name}-SN"
  rt_display_name   = "${var.private_oke_subnet_name}-RT"
  sl_display_name   = "${var.private_oke_subnet_name}-SL"
  cidr_block        = var.private_oke_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id

  freeform_tags = var.freeform_tags
}

module "private_gen1" {
  count      = var.create_private_gen1 ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  sn_display_name   = "${var.private_gen1_subnet_name}-SN"
  rt_display_name   = "${var.private_gen1_subnet_name}-RT"
  sl_display_name   = "${var.private_gen1_subnet_name}-SL" 
  cidr_block        = var.private_gen1_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id

  freeform_tags = var.freeform_tags
}

module "private_gen2" {
  count      = var.create_private_gen2 ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn]

  compartment_id    = var.compartment_id
  sn_display_name   = "${var.private_gen2_subnet_name}-SN"
  rt_display_name   = "${var.private_gen2_subnet_name}-RT"
  sl_display_name   = "${var.private_gen2_subnet_name}-SL" 
  cidr_block        = var.private_gen2_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true

  internet_gateway_id=module.vcn.internet_gateway_id
  nat_gateway_id=module.vcn.nat_gateway_id
  service_gateway_id=module.vcn.service_gateway_id

  freeform_tags = var.freeform_tags
}
