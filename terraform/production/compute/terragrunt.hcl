terraform {
  source =
    "tfr:///oracle-terraform-modules/operator/oci?version=v3.1.5"
}

# https://github.com/oracle-terraform-modules/terraform-oci-operator/blob/main/variables.tf
inputs = {
    tenancy_id = ${{ secrets.tenancy_id }}
    compartment_id = ${{ secrets.user_id }}
    label_prefix = "production"
    vcn_id = 
    operator_shape = {
        shape = "VM.Standard.A1.Flex", ocpus = 4, memory = 24, boot_volume_size = 50
    }
    operator_timezone = "America/Los_Angeles"
}