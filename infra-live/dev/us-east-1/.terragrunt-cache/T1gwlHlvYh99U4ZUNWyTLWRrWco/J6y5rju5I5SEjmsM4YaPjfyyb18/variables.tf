variable "vpc_cidr" {}
variable "vpc_tenancy" {}
variable "enable_dns_hostnames" {}
variable "vpc_tags" {type = map(string)}

variable "subnet_private_a" {}
variable "subnet_private_b" {}
variable "subnet_public_a" {}
variable "subnet_public_b" {}
variable "subnet_tags" {type =map(string)}

variable "igw_name" {}
variable "rt_tags" {}