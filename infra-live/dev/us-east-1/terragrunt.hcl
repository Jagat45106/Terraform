include "root" {
  path = find_in_parent_folders("common.hcl")
}

terraform {
  #source = "../../..//infra-modules/vpc"
  source = "git::git@github.com:Jagat45106/Terraform.git//infra-modules/vpc?ref=master"
}

locals {
  Name        = "dev"
  CostCenter  = "RnD"
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

  public_subnets = ["192.168.1.0/26","192.168.1.64/26"]
  availble_az = ["us-east-1a","us-east-1b"]
  igw_name       = "dev-igw"
}

