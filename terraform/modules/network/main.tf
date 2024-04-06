
resource "oci_core_vcn" "vcn" {

  compartment_id = var.compartment_ocid
  cidr_block     = "10.0.2.0/24"
  defined_tags   = var.network_defined_tags
  display_name   = "demovcn"
  dns_label      = "demo"

}

# --------------------------------------------------------------------- subnet

resource "oci_core_subnet" "private_subnet" {

  cidr_block                 = var.private_sn_cidr_block
  compartment_id             = var.compartment_ocid
  vcn_id                     = oci_core_vcn.vcn.id
  defined_tags               = var.network_defined_tags
  display_name               = "private subnet"
  dns_label                  = "private"
  prohibit_public_ip_on_vnic = true
  prohibit_internet_ingress  = true
  route_table_id             = oci_core_route_table.private_rt.id
  security_list_ids = [
    oci_core_security_list.private_sl.id
  ]
}

# --------------------------------------------------------------------- security list
resource "oci_core_security_list" "private_sl" {

  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.vcn.id

  egress_security_rules {
    destination      = var.private_sn_cidr_block
    protocol         = "6"
    description      = "SSH outgoing"
    destination_type = "CIDR_BLOCK"
    stateless        = false
    tcp_options {
      max = 22
      min = 22
    }
  }

  ingress_security_rules {
    protocol    = "6"
    source      = var.private_sn_cidr_block
    description = "SSH inbound"
    source_type = "CIDR_BLOCK"
    tcp_options {
      max = 22
      min = 22
    }
  }
}
