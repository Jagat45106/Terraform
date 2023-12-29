terraform {
  source = "../../../..//infra-modules/ec2"
  #source = "git::git@github.com:Jagat45106/Terraform.git//infra-modules/ec2?ref=master"
}

include {
  path = find_in_parent_folders()
}

include "env" {
  path = "${get_terragrunt_dir()}/../../../_env/qa.hcl"
}

inputs = {
  env = "qa"
  instance_type = "t2.micro"
}