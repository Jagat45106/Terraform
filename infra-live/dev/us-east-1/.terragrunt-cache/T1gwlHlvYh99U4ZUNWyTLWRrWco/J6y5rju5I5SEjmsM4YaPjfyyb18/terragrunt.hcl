include "root" {
  path   = find_in_parent_folders()
}

terraform {
  source = "../../../infra-modules/vpc"
}

locals {
  Name = "dev"
  CostCenter = "RnD"
  Application = "Web"
}

inputs = {
  vpc_cidr             = "192.168.1.0/24"
  vpc_tenancy          = "default"
  enable_dns_hostnames = true
  vpc_tags = {
    Name        = "${local.Name}-vpc"
    CostCenter  = "${local.CostCenter}"
    Application = "${local.Application}"
  }

  subnet_private_a     = "192.168.1.0/26"
  subnet_private_b     = "192.168.1.64/26"
  subnet_public_a      = "192.168.1.128/26"
  subnet_public_b      = "192.168.1.192/26"
  subnet_tags = {
    Name = "dev_subnet"
  }
  igw_name = "dev-igw"

  rt_tags = {
    Name = "dev-route-table"
  }

}

