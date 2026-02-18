locals {
  common_tags = {
    owner      = "racesilv"
    maneged-by = "terraform"
  }

  nsg_ports = [
    "80",
    "443",
    "8080",
  ]

}