variable "region" {
  # List of regions: https://docs.cloud.oracle.com/iaas/Content/General/Concepts/regions.htm#ServiceAvailabilityAcrossRegions
  description = "the OCI region where resources will be created"
  type        = string
  default     = null
}

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  # no default value, asking user to explicitly set this variable's value. see codingconventions.adoc
}

variable "env" {
  description = "compartment id where to create all resources"
  type        = string
  default= "Test"
  # no default value, asking user to explicitly set this variable's value. see codingconventions.adoc
}

variable "freeform_tags" {
  description = "simple key-value pairs to tag the created resources using freeform OCI Free-form tags."
  type        = map(any)
  default = {
    terraformed = "Please do not edit manually"
    module      = "oracle-terraform-modules/vcn/oci"
  }
}

variable "defined_tags" {
  description = "predefined and scoped to a namespace to tag the resources created using defined tags."
  type        = map(string)
  default     = null
}

variable "enable_ipv6" {
  description = "Whether IPv6 is enabled for the VCN. If enabled, Oracle will assign the VCN a IPv6 /56 CIDR block."
  type        = bool
  default     = false
}

variable "vcn_cidr" {
  description = "The list of IPv4 CIDR blocks the VCN will use."
  default     = "10.0.0.0/16"
  type        = string
}

variable "display_name" {
  description = "user-friendly name of to use for the vcn to be appended to the label_prefix"
  type        = string
  default     = "Template"
  validation {
    condition     = length(var.display_name) > 0
    error_message = "The vcn_name value cannot be an empty string."
  }
}

variable "create_public_subnet" {
  description = "whether to create a service gateway. If set to true, creates a service gateway."
  default     = false
  type        = bool
}

variable "public_subnet_cidr" {
  description = "CIDR Subnet"
  default     = false
  type        = string
}

variable "public_subnet_name" {
  description = "Name Subnet"
  default     = "PUB"
  type        = string
}

variable "create_private_app" {
  description = "whether to create a service gateway. If set to true, creates a service gateway."
  default     = false
  type        = bool
}

variable "private_app_subnet_cidr" {
  description = "CIDR Subnet"
  default     = false
  type        = string
}

variable "private_app_subnet_name" {
  description = "Name Subnet"
  default     = "APP"
  type        = string
}
variable "create_private_db" {
  description = "whether to create a service gateway. If set to true, creates a service gateway."
  default     = false
  type        = bool
}
variable "private_db_subnet_cidr" {
  description = "CIDR Subnet"
  default     = false
  type        = string
}

variable "private_db_subnet_name" {
  description = "Name Subnet"
  default     = "DB"
  type        = string
}
variable "create_private_exacs" {
  description = "whether to create a service gateway. If set to true, creates a service gateway."
  default     = false
  type        = bool
}

variable "private_exacs_client_subnet_cidr" {
  description = "CIDR Subnet"
  default     = false
  type        = string
}

variable "private_exacs_client_subnet_name" {
  description = "Name Subnet"
  default     = "EXACSCLI"
  type        = string
}

variable "private_exacs_bkp_subnet_cidr" {
  description = "CIDR Subnet"
  default     = false
  type        = string
}

variable "private_exacs_bkp_subnet_name" {
  description = "Name Subnet"
  default     = "EXACSBKP"
  type        = string
}

variable "create_private_oke" {
  description = "whether to create a service gateway. If set to true, creates a service gateway."
  default     = false
  type        = bool
}

variable "private_oke_subnet_cidr" {
  description = "CIDR Subnet"
  default     = false
  type        = string
}

variable "private_oke_subnet_name" {
  description = "Name Subnet"
  default     = "OKE"
  type        = string
}
variable "create_private_gen1" {
  description = "whether to create a service gateway. If set to true, creates a service gateway."
  default     = false
  type        = bool
}

variable "private_gen1_subnet_cidr" {
  description = "CIDR Subnet"
  default     = false
  type        = string
}

variable "private_gen1_subnet_name" {
  description = "Name Subnet"
  default     = "GEN1"
  type        = string
}
variable "create_private_gen2" {
  description = "whether to create a service gateway. If set to true, creates a service gateway."
  default     = false
  type        = bool
}

variable "private_gen2_subnet_cidr" {
  description = "CIDR Subnet"
  default     = false
  type        = string
}

variable "private_gen2_subnet_name" {
  description = "Name Subnet"
  default     = "GEN2"
  type        = string
}
