resource "aws_spot_instance_request" "node1" {
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-097c3942d3049b419"]
  wait_for_fulfillment = true
  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_ec2_tag" "node1" {
  resource_id = aws_spot_instance_request.node1.spot_instance_id
  key         = "Name"
  value       = "prom-test-server"
}

resource "aws_spot_instance_request" "node2" {
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-097c3942d3049b419"]

  tags = {
    Name = "prom-test-node"
  }
}

resource "aws_ec2_tag" "node2" {
  resource_id = aws_spot_instance_request.node2.spot_instance_id
  key         = "Name"
  value       = "prom-test-node"
}