resource "aws_instance" "practice" {
  ami = var.ami_value
  instance_type = var.instance_type
}