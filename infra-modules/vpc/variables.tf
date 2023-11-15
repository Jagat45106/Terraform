variable "vpc_cidr" {}
variable "vpc_tenancy" {}
variable "enable_dns_hostnames" {}
variable "vpc_tags" { type = map(string) }

variable "public_subnets" {
  type    = list(string)
  default = []
}
variable "availble_az" {
  type    = list(string)
  default = []
}

variable "igw_name" {}