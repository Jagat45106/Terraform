resource "aws_instance" "web" {
  ami = data.aws_ami.latest_linux.id
  vpc_security_group_ids = var.security_group
  security_groups = var.subnet_id
  instance_type = var.instance_type
}