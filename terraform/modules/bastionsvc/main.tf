resource "oci_bastion_bastion" "demo_bastionsrv" {
  bastion_type     = "STANDARD"
  compartment_id   = var.compartment_ocid
  target_subnet_id = data.terraform_remote_state.network_state.outputs.private_subnet_id
  client_cidr_block_allow_list = [
    var.local_laptop_id
  ]
  name = "demobastionsrv"
}

resource "oci_bastion_session" "demo_bastionsession" {
  bastion_id = oci_bastion_bastion.demo_bastionsrv.id
  key_details {
    public_key_content = var.ssh_bastion_key
  }

  target_resource_details {
    session_type                               = "MANAGED_SSH"
    target_resource_id                         = data.terraform_remote_state.compute_state.outputs.private_instance_id
    target_resource_operating_system_user_name = "opc"
    target_resource_port                       = "22"
  }

  session_ttl_in_seconds = 3600
  display_name           = "bastionsession-private-host"
}

output "connection_details" {
  value = oci_bastion_session.demo_bastionsession.ssh_metadata.command
}
