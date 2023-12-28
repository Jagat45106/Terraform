resource "aws_instance" "web" {
  ami = data.aws_ami.latest_linux.id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.application_sg.id ]
}

resource "aws_security_group" "application_sg" {
  name = "application_sg"
}