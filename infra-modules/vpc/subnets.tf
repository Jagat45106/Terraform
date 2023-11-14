resource "aws_subnet" "private_a" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet_private_a
    enable_resource_name_dns_a_record_on_launch = true
    availability_zone = "us-east-1a"
    tags = var.subnet_tags
}
resource "aws_subnet" "private_b" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet_private_b
    enable_resource_name_dns_a_record_on_launch = true
    availability_zone = "us-east-1b"
    tags = var.subnet_tags
}
resource "aws_subnet" "public_a" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet_public_a
    map_public_ip_on_launch = true
    enable_resource_name_dns_a_record_on_launch = true
    availability_zone = "us-east-1a"
    tags = var.subnet_tags
}
resource "aws_subnet" "public_b" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet_public_b
    map_public_ip_on_launch = true
    enable_resource_name_dns_a_record_on_launch = true
    availability_zone = "us-east-1b"
    tags = var.subnet_tags
}