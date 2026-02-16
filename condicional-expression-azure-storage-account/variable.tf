variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "West Europe"

}

variable "environment" {
  description = "Ambiente do qual os recursos seráo criados na Azure"
  type        = string
}