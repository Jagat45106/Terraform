

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
  access_key = "AKIAXS7GJDOXZYMRRKJZ"
  secret_key = "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"
  region              = "us-east-1"
  allowed_account_ids = ["521784597423"]
}
EOF
}