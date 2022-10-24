resource "aws_security_group" "sg_ecs_ALP" {
  name   = "security group for ${local.name}"
  vpc_id = local.vpc_id
  tags   = local.tags
}

resource "aws_security_group_rule" "ALB_ingress" {
  from_port         = 80
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg_ecs_ALP.id
  type              = "ingress"
}

resource "aws_security_group_rule" "ALB_egress" {
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg_ecs_ALP.id
  type              = "egress"
}