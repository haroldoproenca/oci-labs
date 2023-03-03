module "public_subnet" {
  count      = var.create_public_subnet ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn,module.public_subnet_sl, module.public_subnet_rt]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.public_subnet_name : "${var.label_prefix}-${var.public_subnet_name}"
  cidr_block        = var.public_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = false
  route_table_id    = module.public_subnet_rt[0].route_table_id
  security_list_ids = [module.public_subnet_sl[0].security_list_id]

  freeform_tags = var.freeform_tags
}



module "private_app" {
  count      = var.create_private_app ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn,module.private_app_sl, module.private_app_rt]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_app_subnet_name : "${var.label_prefix}-${var.private_app_subnet_name}"
  cidr_block        = var.private_app_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true
  route_table_id    = module.private_app_rt[0].route_table_id
  security_list_ids = [module.private_app_sl[0].security_list_id]

  freeform_tags = var.freeform_tags
}

module "private_db" {
  count      = var.create_private_db ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn,module.private_db_sl, module.private_db_rt]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_db_subnet_name : "${var.label_prefix}-${var.private_db_subnet_name}"
  cidr_block        = var.private_db_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true
  route_table_id    = module.private_db_rt[0].route_table_id
  security_list_ids = [module.private_db_sl[0].security_list_id]


  freeform_tags = var.freeform_tags
}

module "private_exacs_client" {
  count      = var.create_private_exacs ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn,module.private_exacs_client_sl, module.private_exacs_client_rt]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_exacs_client_subnet_name : "${var.label_prefix}-${var.private_exacs_client_subnet_name}"
  cidr_block        = var.private_exacs_client_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true
  route_table_id    = module.private_exacs_client_rt[0].route_table_id
  security_list_ids = [module.private_exacs_client_sl[0].security_list_id]

  freeform_tags = var.freeform_tags
}

module "private_exacs_bkp" {
  count      = var.create_private_exacs ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn,module.private_exacs_bkp_sl, module.private_exacs_bkp_rt]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_exacs_bkp_subnet_name : "${var.label_prefix}-${var.private_exacs_bkp_subnet_name}"
  cidr_block        = var.private_exacs_bkp_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true
  route_table_id    = module.private_exacs_bkp_rt[0].route_table_id
  security_list_ids = [module.private_exacs_bkp_sl[0].security_list_id]

  freeform_tags = var.freeform_tags
}

module "private_oke" {
  count      = var.create_private_oke ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn,module.private_oke_sl, module.private_oke_rt]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_oke_subnet_name : "${var.label_prefix}-${var.private_oke_subnet_name}"
  cidr_block        = var.private_oke_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true
  route_table_id    = module.private_oke_rt[0].route_table_id
  security_list_ids = [module.private_oke_sl[0].security_list_id]

  freeform_tags = var.freeform_tags
}

module "private_gen1" {
  count      = var.create_private_gen1 ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn,module.private_gen1_sl, module.private_gen1_rt]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_gen1_subnet_name : "${var.label_prefix}-${var.private_gen1_subnet_name}"
  cidr_block        = var.private_gen1_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true
  route_table_id    = module.private_gen1_rt[0].route_table_id
  security_list_ids = [module.private_gen1_sl[0].security_list_id]

  freeform_tags = var.freeform_tags
}

module "private_gen2" {
  count      = var.create_private_gen2 ? 1 : 0
  source     = "./modules/subnet"
  depends_on = [ module.vcn,module.private_gen2_sl, module.private_gen2_rt]

  compartment_id    = var.compartment_id
  display_name   = var.label_prefix == "none" ? var.private_gen2_subnet_name : "${var.label_prefix}-${var.private_gen2_subnet_name}"
  cidr_block        = var.private_gen2_subnet_cidr
  enable_ipv6       = var.enable_ipv6
  vcn_id            = module.vcn.vcn_id
  private_subnet    = true
  route_table_id    = module.private_gen2_rt[0].route_table_id
  security_list_ids = [module.private_gen2_sl[0].security_list_id]

  freeform_tags = var.freeform_tags
}
