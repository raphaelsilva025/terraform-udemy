variable "cidr_vpc" {
  description = "Variavel usada para criar o cidr VPC na AWS"
  type        = string
}

variable "cidr_subnet" {
  description = "Variavel usada para criar o cidr Subnet na AWS"
  type        = string
}
variable "environment" {
  description = "leva o nome do recurso criado"
  type        = string
}