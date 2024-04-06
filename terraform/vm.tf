resource "oci_core_dedicated_vm_host" "test_dedicated_vm_host" {
    #Required
    availability_domain = var.dedicated_vm_host_availability_domain
    compartment_id = var.compartment_id
    dedicated_vm_host_shape = var.dedicated_vm_host_dedicated_vm_host_shape

    #Optional
    defined_tags = {"Operations.CostCenter"= "42"}
    display_name = var.dedicated_vm_host_display_name
    fault_domain = var.dedicated_vm_host_fault_domain
    freeform_tags = {"Department"= "Finance"}
}