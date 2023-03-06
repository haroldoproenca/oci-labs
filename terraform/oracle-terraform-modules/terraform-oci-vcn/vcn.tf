module "vcn" {
  source     = "./modules/vcn"
  vcn_cidr     = var.vcn_cidr
  compartment_id = var.compartment_id
  display_name   = "${var.display_name}-${var.env}-VCN"
  dns_label      = var.vcn_dns_label
  enable_ipv6 = var.enable_ipv6

  internet_gateway_display_name = "${var.display_name}-${var.env}-IGW"
  nat_gateway_display_name = "${var.display_name}-${var.env}-NATGW"
  service_gateway_display_name = "${var.display_name}-${var.env}-SVCGW"
  
  freeform_tags = var.freeform_tags
  defined_tags  = var.defined_tags
}
