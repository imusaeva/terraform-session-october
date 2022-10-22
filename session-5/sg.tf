resource "aws_security_group" "web" {
  name        = "web-instance-sg"
  description = "this is a security group for me web instance"
  vpc_id      = "vpc-0d8767a2191179688"
}

resource "aws_security_group_rule" "web_ingress" {
  count             = 5
  type              = "ingress"
  from_port         = element(var.ingress_ports, count.index)
  to_port           = element(var.ingress_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.web.id
}

resource "aws_security_group_rule" "web_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.web.id
}