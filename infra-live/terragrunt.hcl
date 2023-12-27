generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
  backend "s3" {
    bucket         = "tf-bucket-statefile"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform"
    profile = "dev"
  }
}
EOF
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