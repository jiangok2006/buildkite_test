variable "instance_shape" {
  type    = string
  default = "VM.Standard.A1.Flex"
}

variable "instance_shape_config_ocpus" {
  type    = string
  default = "4"
}

variable "instance_shape_config_memory_in_gbs" {
  type    = string
  default = "24"
}
