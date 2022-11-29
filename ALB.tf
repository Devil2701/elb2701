resource "aws_lb" "my-aws-alb" {
  name     = "my-test-alb"
  internal = false

  security_groups = [
    "${aws_security_group.ssh-allowed.id}",
  ]

  subnets = [
    "${aws_subnet.prod-subnet-public-1.id}",
    "${aws_subnet.prod-subnet-public-2.id}",
  ]

  tags = {
    Name = "my-test-alb"
  }

  ip_address_type    = "ipv4"
  load_balancer_type = "application"
}