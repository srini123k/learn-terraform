resource "aws_route53_record" "record" {
  zone_id = "Z0552687ZOEXRFHA1XPG"
  name    = "${var.component}-dev.devopsb71.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.ec2.private_ip]
}

variable "private_ip" {}

variable "component" {}