provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg" {
    name                         = var.resource_group_name
    location                     = var.location
}

resource "azurerm_windows_virtual_machine" "vm" {
    name                         = var.vm_name
    resource_group_name          = azurerm_resource_group.rg.name
    location                     = var.location
    size                         = var.vm_size
    admin_username               = var.admin_username
    admin_password               = var.admin_password

    network_interface_ids        = [azurerm_network_interface.nic.id]

    os_disk {
        caching                  = "ReadWrite"
        storage_account_type     = "Standard_LRS"
    }

    source_image_reference {
        publisher                = "MicrosoftWindowsServer"
        offer                    = "WindowsServer"
        sku                      = "2022-Datacenter"
        version                  = "latest"
    }
}


resource "azurerm_virtual_network" "vnet" {
    name                        = "vm_vnet"
    address_space               = ["10.0.0.0/16"]
    location                    = var.location
    resource_group_name         = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
    name                       = "vm_sunbet"
    resource_group_name        = azurerm_resource_group.rg.name
    virtual_network_name       = azurerm_virtual_network.vnet.name
    address_space              = ["10.0.1.0/24"]
}

resource "azurerm_network_interface" "nic" {
    name                      = "vm_nic"
    location                  = var.location
    resource_group_name       = azurerm_resoure_group.rg.name

    ip_configurarion {
        name                  = "internal"
        subnet_id             = azure_subnet.subnet.id
        private_ip_address_allocation= "Dynamic"
    }
}
