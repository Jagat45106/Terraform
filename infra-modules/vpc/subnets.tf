resource "aws_subnet" "public_a" {
  count                                       = length(var.public_subnets)
  vpc_id                                      = aws_vpc.vpc.id
  cidr_block                                  = var.public_subnets[count.index]
  map_public_ip_on_launch                     = true
  enable_resource_name_dns_a_record_on_launch = true
  availability_zone                           = var.availble_az[count.index]
}
