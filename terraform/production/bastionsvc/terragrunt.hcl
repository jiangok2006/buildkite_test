inputs = {
    # Identity and access parameters

    api_fingerprint = ${{ secrets.api_fingerprint }}

    api_private_key_path = ${{ secrets.api_private_key_path }}

    region = "us-sanjose-1"

    tenancy_id = ${{ secrets.tenancy_id }}

    user_id = ${{ secrets.user_id }}

    ssh_private_key_path = ${{ secrets.user_id }}

    ssh_public_key_path = ${{ secrets.user_id }}

    # general oci parameters

    compartment_id = ${{ secrets.user_id }}

    label_prefix = "medusa"

    # networking

    internet_gateway_enabled = false

    nat_gateway_enabled = true

    netnum = {
        operator   = 33
        bastion    = 32
        db         = 16
    }

    newbits = {
        operator   = 13
        bastion    = 13
        db         = 11
    }

    service_gateway_enabled = true

    vcn_cidr = "10.0.0.0/16"

    vcn_dns_label = "basedb"

    vcn_name = "basedb"


    # bastion

    bastion_access = "ANYWHERE"

    bastion_enabled = true

    bastion_image_id = "Autonomous"

    bastion_notification_enabled = true

    bastion_notification_endpoint = "<email_address>"

    bastion_notification_protocol = "EMAIL"

    bastion_notification_topic= "bastion_server_notification"

    bastion_package_upgrade = false

    bastion_shape = "VM.Standard.E2.1"

    bastion_timezone = "Australia/Sydney"

    bastion_use_autonomous = true

    operator_enabled = false

    operator_image_id = "NONE"

    enable_instance_principal = true

    operator_notification_enabled = false

    operator_notification_endpoint = ""

    operator_notification_protocol = "EMAIL"

    operator_notification_topic= "operator_server_notification"

    operator_package_upgrade = true

    operator_shape   = "VM.Standard.E2.1"

    operator_timezone= "Australia/Sydney"

    operator_use_autonomous = false

    # availability_domains

    availability_domains = {
    bastion  = 1
    operator = 1
    db       = 1
    }

    # db

    db_system_shape = "VM.Standard2.8"

    cpu_core_count = 2

    db_edition = "ENTERPRISE_EDITION_EXTREME_PERFORMANCE"

    db_admin_password = "BEstrO0ng_#12"

    db_name = "basedb"

    db_home_db_name = "basedb2"

    db_version = "19.0.0.0"

    db_home_display_name = "basedbhome"

    db_disk_redundancy = "HIGH"

    db_system_display_name = "basedb_system"

    hostname = "myoracledb"

    n_character_set = "AL16UTF16"

    character_set = "AL32UTF8"

    db_workload = "OLTP"

    pdb_name = "pdb1"

    data_storage_size_in_gb = 256

    license_model = "LICENSE_INCLUDED"

    node_count = 2

    data_storage_percentage = 40
}