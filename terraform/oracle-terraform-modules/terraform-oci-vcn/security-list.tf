#module "public_subnet_sl" {
#  depends_on = [ module.vcn ]
#  count  = var.create_public_subnet ? 1 : 0
#  source = "./modules/security-list"
#
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  display_name = var.label_prefix == "none" ? "${var.public_subnet_name}-SL" : "${var.label_prefix}-${var.public_subnet_name}-SL"
#}
#
#module "private_app_sl" {
#  depends_on = [ module.vcn ]
#  count  = var.create_private_app ? 1 : 0
#  source = "./modules/security-list"
#
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  display_name = var.label_prefix == "none" ? "${var.private_app_subnet_name}-SL" : "${var.label_prefix}-${var.private_app_subnet_name}-SL"
#
#}
#
#module "private_db_sl" {
#  depends_on = [ module.vcn ]
#  count  = var.create_private_db ? 1 : 0
#  source = "./modules/security-list"
#
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  display_name = var.label_prefix == "none" ? "${var.private_db_subnet_name}-SL" : "${var.label_prefix}-${var.private_db_subnet_name}-SL"
#}
#
#module "private_exacs_client_sl" {
#  depends_on = [ module.vcn ]
#  count  = var.create_private_exacs ? 1 : 0
#  source = "./modules/security-list"
#
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  display_name = var.label_prefix == "none" ? "${var.private_exacs_client_subnet_name}-SL" : "${var.label_prefix}-${var.private_exacs_client_subnet_name}-SL"
#
#}
#
#module "private_exacs_bkp_sl" {
#  depends_on = [ module.vcn ]
#  count  = var.create_private_exacs ? 1 : 0
#  source = "./modules/security-list"
#
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  display_name = var.label_prefix == "none" ? "${var.private_exacs_bkp_subnet_name}-SL" : "${var.label_prefix}-${var.private_exacs_bkp_subnet_name}-SL"
#
#}
#
#module "private_oke_sl" {
#  depends_on = [ module.vcn ]
#  count  = var.create_private_oke ? 1 : 0
#  source = "./modules/security-list"
#
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  display_name = var.label_prefix == "none" ? "${var.private_oke_subnet_name}-SL" : "${var.label_prefix}-${var.private_oke_subnet_name}-SL"
#
#}
#
#module "private_gen1_sl" {
#  depends_on = [ module.vcn ]
#  count  = var.create_private_gen1 ? 1 : 0
#  source = "./modules/security-list"
#
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  display_name = var.label_prefix == "none" ? "${var.private_gen1_subnet_name}-SL" : "${var.label_prefix}-${var.private_gen1_subnet_name}-SL"
#
#}
#
#module "private_gen2_sl" {
#  depends_on = [ module.vcn ]
#  count  = var.create_private_gen2 ? 1 : 0
#  source = "./modules/security-list"
#
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  display_name = var.label_prefix == "none" ? "${var.private_gen2_subnet_name}-SL" : "${var.label_prefix}-${var.private_gen2_subnet_name}-SL"
#
#}
#
#
