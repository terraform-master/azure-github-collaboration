variable "rgname" {}
variable "location" {}
variable "vnetname" {}
variable "subnet1name" {
  default = "subnet1"
}

variable vnet_addr_space {
  default = "172.16.1.0/16"
}
variable subnet1_addr_space {
  default = "172.16.1.0/24"
}