resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = var.vpc_tenancy
  tags = var.vpc_tags
  enable_dns_hostnames = var.enable_dns_hostnames
}