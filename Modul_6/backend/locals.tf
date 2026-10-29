locals {
  #---------- backend ----------#

  backend_rg_name = "rg-demo-backend-${var.student_id}"
  backend_storage_name = "stdemo${var.student_id}"
  backend_keyvault_name = "kv-demo-${var.student_id}"


  tags = {
    student = var.student_id
    course = "iac"
    keep = "true"
  }
}
