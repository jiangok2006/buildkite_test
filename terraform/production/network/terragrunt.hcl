terraform {
  source = "tfr:///oracle-terraform-modules/vcn/oci?version=3.6.0"
}

# https://github.com/oracle-terraform-modules/terraform-oci-vcn/blob/main/examples/module_composition/terraform.tfvars.example
# Investigate: get authorization error when creating vcn using non root compartment even in oci console.
inputs = {
  api_fingerprint      = get_env("TF_VAR_api_fingerprint")
  api_private_key_path = get_env("TF_VAR_api_private_key_path")
  compartment_id       = get_env("TF_VAR_compartment_id")
  label_prefix         = "production"
  region               = "us-sanjose-1"
  tenancy_id           = get_env("TF_VAR_tenancy_id")
  user_id              = get_env("TF_VAR_user_id")
}