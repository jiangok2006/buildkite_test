resource "oci_core_network_security_group" "test_network_security_group" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.test_vcn.id

    #Optional
    defined_tags = {"Operations.CostCenter"= "42"}
    display_name = var.network_security_group_display_name
    freeform_tags = {"Department"= "Finance"}
}

resource "oci_core_network_security_group_security_rule" "test_network_security_group_security_rule" {
    #Required
    network_security_group_id = oci_core_network_security_group.test_network_security_group.id
    direction = var.network_security_group_security_rule_direction
    protocol = var.network_security_group_security_rule_protocol

    #Optional
    description = var.network_security_group_security_rule_description
    destination = var.network_security_group_security_rule_destination
    destination_type = var.network_security_group_security_rule_destination_type
    icmp_options {
        #Required
        type = var.network_security_group_security_rule_icmp_options_type

        #Optional
        code = var.network_security_group_security_rule_icmp_options_code
    }
    source = var.network_security_group_security_rule_source
    source_type = var.network_security_group_security_rule_source_type
    stateless = var.network_security_group_security_rule_stateless
    tcp_options {

        #Optional
        destination_port_range {
            #Required
            max = var.network_security_group_security_rule_tcp_options_destination_port_range_max
            min = var.network_security_group_security_rule_tcp_options_destination_port_range_min
        }
        source_port_range {
            #Required
            max = var.network_security_group_security_rule_tcp_options_source_port_range_max
            min = var.network_security_group_security_rule_tcp_options_source_port_range_min
        }
    }
    udp_options {

        #Optional
        destination_port_range {
            #Required
            max = var.network_security_group_security_rule_udp_options_destination_port_range_max
            min = var.network_security_group_security_rule_udp_options_destination_port_range_min
        }
        source_port_range {
            #Required
            max = var.network_security_group_security_rule_udp_options_source_port_range_max
            min = var.network_security_group_security_rule_udp_options_source_port_range_min
        }
    }
}