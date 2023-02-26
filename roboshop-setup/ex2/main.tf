data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "frontend" {
  count                  = length(var.instances)
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-097c3942d3049b419"]
  }

variable "instances" {
  default = ["cart", "catalogue","user","mongodb","payment"]

}

output "public-ip" {
  value = aws_instance.frontend.*.public-ip
}