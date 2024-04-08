terraform {
  source = "../../modules/bastionsvc"
}

include {
  path = find_in_parent_folders("terragrunt.hcl")
}

dependency "network" {
  config_path = "../network"
}

# 
dependency "compute" {
  config_path = "../compute"
}

inputs = {
  private_instance_id = data.terraform_remote_state.vm.outputs.
  subnet_id           = dependency.network.outputs.vcn_id
}
