#module "public_subnet_rt" {
#  count      = var.create_public_subnet ? 1 : 0
#  source     = "./modules/route-table-public"
#  depends_on = [ module.vcn]
#
#  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  # Deployment Tags + Freeform Tags + Defined Tags
#  route_table_tags = var.freeform_tags
#
#  route_table_name = var.label_prefix == "none" ? "${var.public_subnet_name}_rt" : "${var.label_prefix}-${var.public_subnet_name}_rt"
#  display_name = var.label_prefix == "none" ? "${var.public_subnet_name}_rt" : "${var.label_prefix}-${var.public_subnet_name}_rt"
#}
#
#module "private_app_rt" {
#  count      = var.create_private_app ? 1 : 0
#  source     = "./modules/route-table-private"
#  depends_on = [ module.vcn]
#
#  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  # Deployment Tags + Freeform Tags + Defined Tags
#  route_table_tags = var.freeform_tags
#
#  route_table_name = var.label_prefix == "none" ? "${var.private_app_subnet_name}_rt" : "${var.label_prefix}-${var.private_app_subnet_name}_rt"
#  display_name = var.label_prefix == "none" ? "${var.private_app_subnet_name}_rt" : "${var.label_prefix}-${var.private_app_subnet_name}_rt"
#  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")
#}
#
#module "private_db_rt" {
#  count      = var.create_private_db ? 1 : 0
#  source     = "./modules/route-table-private"
#  depends_on = [ module.vcn]
#
#  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  # Deployment Tags + Freeform Tags + Defined Tags
#  route_table_tags = var.freeform_tags
#
#  route_table_name = var.label_prefix == "none" ? "${var.private_db_subnet_name}_rt" : "${var.label_prefix}-${var.private_db_subnet_name}_rt"
#  display_name = var.label_prefix == "none" ? "${var.private_db_subnet_name}_rt" : "${var.label_prefix}-${var.private_db_subnet_name}_rt"
#  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")
#}
#
#module "private_exacs_client_rt" {
#  count      = var.create_private_exacs ? 1 : 0
#  source     = "./modules/route-table-private"
#  depends_on = [ module.vcn]
#
#  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  # Deployment Tags + Freeform Tags + Defined Tags
#  route_table_tags = var.freeform_tags
#
#  route_table_name = var.label_prefix == "none" ? "${var.private_exacs_client_subnet_name}_rt" : "${var.label_prefix}-${var.private_exacs_client_subnet_name}_rt"
#  display_name = var.label_prefix == "none" ? "${var.private_exacs_client_subnet_name}_rt" : "${var.label_prefix}-${var.private_exacs_client_subnet_name}_rt"
#  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")
#}
#
#module "private_exacs_bkp_rt" {
#  count      = var.create_private_exacs ? 1 : 0
#  source     = "./modules/route-table-private"
#  depends_on = [ module.vcn]
#
#  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  # Deployment Tags + Freeform Tags + Defined Tags
#  route_table_tags = var.freeform_tags
#
#  route_table_name = var.label_prefix == "none" ? "${var.private_exacs_bkp_subnet_name}_rt" : "${var.label_prefix}-${var.private_exacs_bkp_subnet_name}_rt"
#  display_name = var.label_prefix == "none" ? "${var.private_exacs_bkp_subnet_name}_rt" : "${var.label_prefix}-${var.private_exacs_bkp_subnet_name}_rt"
#  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")
#}
#
#module "private_oke_rt" {
#  count      = var.create_private_oke ? 1 : 0
#  source     = "./modules/route-table-private"
#  depends_on = [ module.vcn]
#
#  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  # Deployment Tags + Freeform Tags + Defined Tags
#  route_table_tags = var.freeform_tags
#
#  route_table_name = var.label_prefix == "none" ? "${var.private_oke_subnet_name}_rt" : "${var.label_prefix}-${var.private_oke_subnet_name}_rt"
#  display_name = var.label_prefix == "none" ? "${var.private_oke_subnet_name}_rt" : "${var.label_prefix}-${var.private_oke_subnet_name}_rt"
#  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")
#}
#
#module "private_gen1_rt" {
#  count      = var.create_private_gen1 ? 1 : 0
#  source     = "./modules/route-table-private"
#  depends_on = [ module.vcn]
#
#  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  # Deployment Tags + Freeform Tags + Defined Tags
#  route_table_tags = var.freeform_tags
#
#  route_table_name = var.label_prefix == "none" ? "${var.private_gen1_subnet_name}_rt" : "${var.label_prefix}-${var.private_gen1_subnet_name}_rt"
#  display_name = var.label_prefix == "none" ? "${var.private_gen1_subnet_name}_rt" : "${var.label_prefix}-${var.private_gen1_subnet_name}_rt"
#  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")
#}
#
#module "private_gen2_rt" {
#  count      = var.create_private_gen2 ? 1 : 0
#  source     = "./modules/route-table-private"
#  depends_on = [ module.vcn]
#
#  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
#  compartment_id = var.compartment_id
#  vcn_id           = module.vcn.vcn_id
#
#  # Deployment Tags + Freeform Tags + Defined Tags
#  route_table_tags = var.freeform_tags
#
#  route_table_name = var.label_prefix == "none" ? "${var.private_gen2_subnet_name}_rt" : "${var.label_prefix}-${var.private_gen2_subnet_name}_rt"
#  display_name = var.label_prefix == "none" ? "${var.private_gen2_subnet_name}_rt" : "${var.label_prefix}-${var.private_gen2_subnet_name}_rt"
#  oci_all_services = lookup(data.oci_core_services.all_services.services[0], "cidr_block")
#}
#
#
