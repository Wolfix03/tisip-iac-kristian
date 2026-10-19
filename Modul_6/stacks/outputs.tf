output "resource_group" {
  description = "Ressursgruppen som miljøet har opprettet"
  value = var.resource_group_name
}

output "vnet_name" {
  description = "Navn på VNet"
  value = module.network.vnet_name
}