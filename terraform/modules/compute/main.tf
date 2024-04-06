resource "oci_core_instance" "private_instance" {
  agent_config {
    is_management_disabled = false
    is_monitoring_disabled = false

    plugins_config {
      desired_state = "ENABLED"
      name          = "Bastion"
    }
  }

  defined_tags = var.compute_defined_tags

  create_vnic_details {

    assign_private_dns_record = true
    assign_public_ip          = false
    hostname_label            = "privateinst"
    subnet_id                 = data.terraform_remote_state.network_state.outputs.private_subnet_id
    nsg_ids                   = []
  }
}
