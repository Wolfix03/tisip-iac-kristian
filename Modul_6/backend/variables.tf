variable "student_id" {
  description = "Din unike student-ID. Brukes som prefiks i alle ressursnavn."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,8}$", var.student_id))
    error_message = "student_id må være 3-8 tegn og kun inneholde såm bokstaver og tall."
  }
}


variable "location" {
  description = "Azure-region for ressursene"
  type        = string
  default     = "norwayeast"
}


variable "pipeline_principal_id" {
  description = "OBJECT-ID til service principal-en, ikke client-ID. Se seksjon 10."
  type        = string
}
