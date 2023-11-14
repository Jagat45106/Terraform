generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents = <<EOF
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25"
    }
  }
}
provider "aws" {
  region              = "us-east-1"
  profile = "default"
  allowed_account_ids = ["521784597423"]
}
EOF
}