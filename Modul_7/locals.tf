locals {
  name_prefix = "${var.student_id}-${var.project}"

  resource_group_name = "${local.name_prefix}-rg"


  #---------- Network ----------#

  name_vnet = "${local.name_prefix}-vnet"

  name_snet = "${local.name_prefix}-snet"

  name_nsg = "${local.name_prefix}-nsg"

  name_network_interface = "${local.name_prefix}-networkInterface"


  #---------- VM ----------#

  name_vm = "${local.name_prefix}-vm"

  name_public_ip = "${local.name_prefix}-public_ip"

  name_student_id = var.student_id

}


