output "subnet_id" {
  value       = azurerm_subnet.snet.id
  description = "ID til subnettet, til bruk for f.eks. en NIC"
}

output "vnet_name" {
  description = "Navn på VNet"
  value       = azurerm_virtual_network.vnet.name
}