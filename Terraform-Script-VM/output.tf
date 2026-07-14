output "Virtual_Machine_Name" {
    description = "Name Of The Virtual Marchine"
    value       = azurerm_windows_virtual_machine.vm.name
}

output "vm_public_ip" {
  description = "Public IP of the VM"
  value       = azurerm_public_ip.pip.ip_address
}

