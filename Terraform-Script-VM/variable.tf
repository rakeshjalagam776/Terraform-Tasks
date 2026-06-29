variable "resource_group_name" {
    default = "vm_rg"
}

variable "location" {
    default = "eastus"
}

variable "vm_name" {
    default = "vm_win"
}

variable "vm_size" {
    default = "Standard_D2s_v3
}

variable "admin_username" {
    default = "rakesh.jalagam
}

variable "admin_password" {
    description = "Admin password for the virtual machine"
    type        = string
    sensitive   = true
    default     = "Rakesh@9059040620
}

