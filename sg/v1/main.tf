resource "aws_security_group" "web" {
  name        = "{var.env}-web-sg"
  description = "This is a security group for Web Instance"
}

resource "aws_security_group_rule" "web_ingress" {
  for_each          = var.ingress_rules # for_each = is a meta argument , var.ingress_rules = variable that has a map of keys and values
  type              = "ingress"
  from_port         = each.key    # key from variable map
  to_port           = each.key    # key from variable map
  protocol          = "tcp"
  cidr_blocks       = [each.value] # value from variable map
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