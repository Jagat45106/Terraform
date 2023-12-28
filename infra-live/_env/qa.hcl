locals {
  Name        = "qa"
  CostCenter  = "RnD"
  Application = "Web"
}

// generate "provider" {
//   path      = "provider.tf"
//   if_exists = "overwrite"
//   contents  = <<EOF
// terraform {
//   required_providers {
//     aws = {
//       source  = "hashicorp/aws"
//       version = ">=5.0"
//     }
//   }
// }
// provider "aws" {
//   profile = "dev"
//   region = "us-east-1"
  
// }
// EOF
// }

inputs = {
  vpc_cidr             = "192.168.1.0/24"
  vpc_tenancy          = "default"
  enable_dns_hostnames = true
  vpc_tags = {
    Name        = "${local.Name}-vpc"
    CostCenter  = "${local.CostCenter}"
    Application = "${local.Application}"
  }

  public_subnets = ["192.168.1.0/26", "192.168.1.64/26"]
  availble_az    = ["us-east-1a", "us-east-1b"]
  igw_name       = "qa-igw"
}