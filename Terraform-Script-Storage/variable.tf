variable "resoure_group_name" {
    description       = "Name of the resource group"
    type              = string
    default           = "tfstr1234-rg"
}

varibale "storage_account_name" {
    description       = "Globally unique name of the storage account(3-24 lowercase and numbers)
    type              = string
    default           = "straz123ge"
}

variable "location" {
    description       = "Azure Region"
    type              = string
    default           = "westus"
}

variable  "account_tier" {
    description       = "Performance tier (standard or premium)"
    type              = string
    default           = "Standard_LRS"
}

variable "replication_type" {
    description       = "Replicaiton strategy (LRS, ZRS, GRS, GZRS)"
    type              = string
    default           = "LRS"
}

 
