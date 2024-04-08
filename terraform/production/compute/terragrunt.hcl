terraform {
  # https://github.com/oracle-terraform-modules/terraform-oci-operator
  source = "tfr:///oracle-terraform-modules/operator/oci?version=3.1.5"
}

dependency "network" {
  config_path = "../network"
}

include {
  path = find_in_parent_folders("terragrunt.hcl")
}

inputs = {
  nat_route_id = dependency.network.outputs.nat_route_id
  operator_shape = {
    # ocpus=4, memory=24 will cause "Out of host capacity" error.
    shape = "VM.Standard.A1.Flex", ocpus = 2, memory = 12, boot_volume_size = 50
  }
  operator_timezone   = "America/Los_Angeles"
  ssh_public_key_path = "none"
  vcn_id              = dependency.network.outputs.vcn_id
}