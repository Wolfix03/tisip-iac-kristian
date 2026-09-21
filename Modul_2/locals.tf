locals {
  name_prefix = "${var.student_id}-${var.project}"

  resource_group_name = "${local.name_prefix}-rg"
}
