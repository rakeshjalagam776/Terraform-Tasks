variable "resource_group_name" {
  default = "vm_terraform"
}

variable "location" {
  default = "westus2"
}

variable "vm_name" {
  default = "vm_linux"   # ✅ updated name
}

variable "vm_size" {
  default = "Standard_D2s_v3"
}

variable "admin_username" {
  default = "rakesh"     # ✅ Linux usernames should be simple (no dots)
}

# Option 1: Password authentication (not recommended for Linux)
variable "admin_password" {
  description = "Admin password for the Linux VM"
  type        = string
  sensitive   = true
  default     = "Rakesh@9059040620"   # ✅ use a strong password
}

# Option 2: SSH key authentication (recommended)
variable "ssh_public_key" {
  description = "SSH public key for the Linux VM"
  type        = string
  default     = file("~/.ssh/id_rsa.pub")
}
