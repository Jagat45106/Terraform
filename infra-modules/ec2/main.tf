resource "aws_instance" "web" {
  ami = data.aws_ami.latest_linux.id
  instance_type = var.instance_type
}