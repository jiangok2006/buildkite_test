terraform {
  source =
    "tfr:///oracle-terraform-modules/vcn/oci?version=v3.6.0"
}

# https://github.com/oracle-terraform-modules/terraform-oci-vcn/blob/main/examples/module_composition/terraform.tfvars.example
inputs = {
    api_fingerprint = ${{ secrets.api_fingerprint }}

    api_private_key_path = ${{ secrets.api_private_key_path }}

    region = "us-sanjose-1"

    tenancy_id = ${{ secrets.tenancy_id }}

    user_id = ${{ secrets.user_id }}

    compartment_id = ${{ secrets.compartment_id }}

    label_prefix = "production"
}