module "public_subnet_rt" {
  count      = var.create_public_subnet ? 1 : 0
  source     = "./modules/route-table-public"
  depends_on = [oci_core_internet_gateway.gateway]

  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  # Deployment Tags + Freeform Tags + Defined Tags
  route_table_tags = var.freeform_tags

  route_table_name = "${var.public_subnet_name}_rt"
  display_name     = "${var.public_subnet_name}_rt"

  #internet_gateway_id = module.igw[0].internet_gateway_id
  internet_gateway_id = oci_core_internet_gateway.gateway[0].id

}

module "private_app_rt" {
  count      = var.create_private_app ? 1 : 0
  source     = "./modules/route-table-private"
  depends_on = [oci_core_nat_gateway.gateway, oci_core_service_gateway.gateway]

  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  # Deployment Tags + Freeform Tags + Defined Tags
  route_table_tags = var.freeform_tags

  route_table_name = "${var.private_app_subnet_name}_rt"
  display_name     = "${var.private_app_subnet_name}_rt"
  oci_all_services = lookup(data.oci_core_services.all_services_network.services[0], "cidr_block")

  nat_gateway_id     = oci_core_nat_gateway.gateway[0].id
  service_gateway_id = oci_core_service_gateway.gateway[0].id
}

module "private_db_rt" {
  count      = var.create_private_db ? 1 : 0
  source     = "./modules/route-table-private"
  depends_on = [oci_core_nat_gateway.gateway, oci_core_service_gateway.gateway]

  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  # Deployment Tags + Freeform Tags + Defined Tags
  route_table_tags = var.freeform_tags

  route_table_name = "${var.private_db_subnet_name}_rt"
  display_name     = "${var.private_db_subnet_name}_rt"
  oci_all_services = lookup(data.oci_core_services.all_services_network.services[0], "cidr_block")

  nat_gateway_id     = oci_core_nat_gateway.gateway[0].id
  service_gateway_id = oci_core_service_gateway.gateway[0].id
}

module "private_exacs_client_rt" {
  count      = var.create_private_exacs ? 1 : 0
  source     = "./modules/route-table-private"
  depends_on = [oci_core_nat_gateway.gateway, oci_core_service_gateway.gateway]

  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  # Deployment Tags + Freeform Tags + Defined Tags
  route_table_tags = var.freeform_tags

  route_table_name = "${var.private_exacs_client_subnet_name}_rt"
  display_name     = "${var.private_exacs_client_subnet_name}_rt"
  oci_all_services = lookup(data.oci_core_services.all_services_network.services[0], "cidr_block")

  nat_gateway_id     = oci_core_nat_gateway.gateway[0].id
  service_gateway_id = oci_core_service_gateway.gateway[0].id
}

module "private_exacs_bkp_rt" {
  count      = var.create_private_exacs ? 1 : 0
  source     = "./modules/route-table-private"
  depends_on = [oci_core_nat_gateway.gateway, oci_core_service_gateway.gateway]

  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  # Deployment Tags + Freeform Tags + Defined Tags
  route_table_tags = var.freeform_tags

  route_table_name = "${var.private_exacs_bkp_subnet_name}_rt"
  display_name     = "${var.private_exacs_bkp_subnet_name}_rt"
  oci_all_services = lookup(data.oci_core_services.all_services_network.services[0], "cidr_block")

  nat_gateway_id     = oci_core_nat_gateway.gateway[0].id
  service_gateway_id = oci_core_service_gateway.gateway[0].id
}

module "private_oke_rt" {
  count      = var.create_private_oke ? 1 : 0
  source     = "./modules/route-table-private"
  depends_on = [oci_core_nat_gateway.gateway, oci_core_service_gateway.gateway]

  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  # Deployment Tags + Freeform Tags + Defined Tags
  route_table_tags = var.freeform_tags

  route_table_name = "${var.private_oke_subnet_name}_rt"
  display_name     = "${var.private_oke_subnet_name}_rt"
  oci_all_services = lookup(data.oci_core_services.all_services_network.services[0], "cidr_block")

  nat_gateway_id     = oci_core_nat_gateway.gateway[0].id
  service_gateway_id = oci_core_service_gateway.gateway[0].id
}

module "private_gen1_rt" {
  count      = var.create_private_gen1 ? 1 : 0
  source     = "./modules/route-table-private"
  depends_on = [oci_core_nat_gateway.gateway, oci_core_service_gateway.gateway]

  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  # Deployment Tags + Freeform Tags + Defined Tags
  route_table_tags = var.freeform_tags

  route_table_name = "${var.private_gen1_subnet_name}_rt"
  display_name     = "${var.private_gen1_subnet_name}_rt"
  oci_all_services = lookup(data.oci_core_services.all_services_network.services[0], "cidr_block")

  nat_gateway_id     = oci_core_nat_gateway.gateway[0].id
  service_gateway_id = oci_core_service_gateway.gateway[0].id
}

module "private_gen2_rt" {
  count      = var.create_private_gen2 ? 1 : 0
  source     = "./modules/route-table-private"
  depends_on = [oci_core_nat_gateway.gateway, oci_core_service_gateway.gateway]

  # Oracle Cloud Infrastructure Tenancy and Compartment OCID
  compartment_ocid = var.compartment_id
  vcn_id           = oci_core_vcn.vcn.id

  # Deployment Tags + Freeform Tags + Defined Tags
  route_table_tags = var.freeform_tags

  route_table_name = "${var.private_gen2_subnet_name}_rt"
  display_name     = "${var.private_gen2_subnet_name}_rt"
  oci_all_services = lookup(data.oci_core_services.all_services_network.services[0], "cidr_block")

  nat_gateway_id     = oci_core_nat_gateway.gateway[0].id
  service_gateway_id = oci_core_service_gateway.gateway[0].id
}
