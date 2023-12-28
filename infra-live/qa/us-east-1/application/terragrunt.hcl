terraform {
  #source = "../../../..//infra-modules/vpc"
  source = "git::git@github.com:Jagat45106/Terraform.git//infra-modules/ec2?ref=dev"
}

include {
  path = find_in_parent_folders()
}

include "env" {
  path = "${get_terragrunt_dir()}/../../../_env/qa.hcl"
}

dependency "vpc" {
  config_path = "../vpc"
  skip_outputs = true
}

inputs = {
  env = "qa"
  instance_type = "t2.micro"
}