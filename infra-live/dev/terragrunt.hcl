include root {
  path = read_terragrunt_config(find_in_parent_folders())
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents = <<EOF
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}
provider "aws" {
  access_key = "hhh"
  secret_key = "nnnnn/xBga"
  region              = "us-east-1"
  allowed_account_ids = ["521784597423"]
  }
EOF
}