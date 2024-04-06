terraform {
  source =
    "tfr:///oracle-terraform-modules/base/oci/latest?version=v2.4.0"
}
inputs = {
  oci_base_provider = {
    api_fingerprint      = string
    api_private_key_path = string
    region               = string
    tenancy_id           = string
    user_id              = string
  },

  
}