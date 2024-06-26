inputs = {
  compartment_id = get_env("TF_VAR_compartment_id")
  label_prefix   = "production"
  region         = "us-sanjose-1"
  tenancy_id     = get_env("TF_VAR_tenancy_id")
  user_id        = get_env("TF_VAR_user_id")
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "oci" {
  alias                 = "home"
}
EOF
}

remote_state {
  backend = "local"
  config = {
    path = "${get_parent_terragrunt_dir()}/${path_relative_to_include()}/terraform.tfstate"
  }

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
}