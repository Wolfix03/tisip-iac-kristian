terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location

  tags = {
    student = var.student_id
    course  = "iac"
  }
}

module "stack" {
  source              = "./stacks"
  project             = local.name_prefix
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  student_id          = var.student_id
  environment         = var.environment
  name_prefix         = var.name_prefix
}