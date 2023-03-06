# Copyright (c) 2022 Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl.
# 

output "internet_gateway_id" {
  value       = var.create_internet_gateway ? oci_core_internet_gateway.gateway[0].id : null
  description = "The OCID of the Internet Gateway."
}
