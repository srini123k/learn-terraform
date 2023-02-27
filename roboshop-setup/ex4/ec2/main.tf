data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-097c3942d3049b419"]
  tags = {
    Name = var.component
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z0552687ZOEXRFHA1XPG"
  name    = "${var.component}-dev.devopsb71.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.ec2.private_ip]
}

variable "component" {}

variable "instance_type" {}