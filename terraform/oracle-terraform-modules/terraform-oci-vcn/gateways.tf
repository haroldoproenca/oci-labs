module "internet-gateway" {
  source     = "./modules/internet-gateway"
  depends_on = [ module.vcn ]
  count          = var.create_internet_gateway ? 1 : 0
  compartment_id = var.compartment_id
  display_name   = var.internet_gateway_display_name
  enabled        = true
  vcn_id         = module.vcn.vcn_id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags
}

module "nat-gateway" {
  source     = "./modules/nat-gateway"
  depends_on = [ module.vcn ]
  count          = var.create_nat_gateway ? 1 : 0
  block_traffic  = false
  compartment_id = var.compartment_id
  display_name   = var.nat_gateway_display_name
  vcn_id         = module.vcn.vcn_id
  public_ip_id   = null
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags
}

module "service-gateway" {
  source     = "./modules/service-gateway"
  depends_on = [ module.vcn ]
  count          = var.create_service_gateway ? 1 : 0
  compartment_id = var.compartment_id
  display_name   = var.service_gateway_display_name
  vcn_id         = module.vcn.vcn_id
  freeform_tags  = var.freeform_tags
  defined_tags   = var.defined_tags

  services {
    service_id = lookup(data.oci_core_services.all_services.services[0], "id")
  }
}
