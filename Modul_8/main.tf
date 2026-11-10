terraform {
  required_version = ">= 1.16.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.4"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location

  tags = {
    student   = var.student_id
    course    = "iac"
    module    = "modul7"
    manage_by = "pipeline"
  }
}

module "network" {
  source = "git::https://github.com/Wolfix03/tisip-iac-kristian.git//modules/network?ref=network-v1.0.0"

  project = local.name_prefix
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
  
}