output "Virtual_Machine_Name" {
  description = "Name of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "vm_public_ip" {
  description = "Public IP of the VM"
  value       = azurerm_public_ip.pip.ip_address
}
