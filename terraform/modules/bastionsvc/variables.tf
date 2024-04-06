variable "compartment_ocid" {
  type = string
}

variable "local_laptop_id" {
  type = string
}

variable "ssh_bastion_key" {
  type = string
}

variable "network_defined_tags" {
  type    = string
  default = ["medusa"]
}
