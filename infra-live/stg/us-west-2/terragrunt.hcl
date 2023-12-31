terraform {
  #source = "../../..//infra-modules/vpc"
  source = "git::git@github.com:Jagat45106/Terraform.git//infra-modules/vpc?ref=master"
}

include {
  path = find_in_parent_folders()
}

include "env" {
  path = "${get_terragrunt_dir()}/../../_env/stg.hcl"
}

inputs = {
  env = "stg"
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents  = <<EOF
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.0"
    }
  }
}
// provider "aws" {
//   profile = "dev"
//   region = "us-west-2"
// }
EOF
}