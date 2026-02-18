variable "location" {
  description = "The Azure region where resources will be created."
  type        = map(string)
  default = {
    "europa" = "West Europe",
    "eua"    = "East Us",
    "asia"   = "Japan East",
    "brasil" = "Brazil South"

  }

}

variable "account_tier" {
  description = "The tier of the storage account."
  type        = string
  default     = "Standard"

}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"

}