module "vcn" {
  source     = "./modules/vcn"
  vcn_cidr     = var.vcn_cidr
  compartment_id = var.compartment_id
  display_name   = var.label_prefix == "none" ? "${var.display_name}-VCN" : "${var.label_prefix}-${var.display_name}-VCN"
  dns_label      = var.vcn_dns_label
  enable_ipv6 = var.enable_ipv6

  internet_gateway_display_name = var.label_prefix == "none" ? "IGW" : "${var.label_prefix}-IGW"
  nat_gateway_display_name = var.label_prefix == "none" ? "NATGW" : "${var.label_prefix}-NATGW"
  service_gateway_display_name = var.label_prefix == "none" ? "SVCGW" : "${var.label_prefix}-SVCGW"
  
  freeform_tags = var.freeform_tags
  defined_tags  = var.defined_tags
}
