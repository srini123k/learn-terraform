data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "ec2" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = var.component
  }
}

variable "component" {}

variable "instance_type" {}

variable "sg_id" {}

variable "private_ip" {}

output "private_ip" {
  value = aws_instance.ec2.private_ip
}