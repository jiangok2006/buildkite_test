terraform {
  # https://github.com/oracle-terraform-modules/terraform-oci-vcn/
  source = "tfr:///oracle-terraform-modules/vcn/oci?version=3.6.0"
}

include {
  path = find_in_parent_folders("terragrunt.hcl")
}

