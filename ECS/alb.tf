
resource "aws_alb" "ECS-Service-ALB" {
  name               = "ECS-Service-ALB"
  internal           = false
  load_balancer_type = "application"
  subnets            = data.terraform_remote_state.VPC.outputs.subnet_ids
  security_groups    = [aws_security_group.sg_ecs_ALP.id]

  tags = {
    Name = "ECS-Service-ALB"
  }
}

resource "aws_alb_target_group" "ECS-tg" {
  name     = "ECS-tg"
  port     = 80
  protocol = "HTTP"
  target_type = "instance"
  vpc_id   = data.terraform_remote_state.VPC.outputs.vpc_id
}

resource "aws_alb_listener" "nginx-listeners" {
  load_balancer_arn = aws_alb.ECS-Service-ALB.arn
  port              = "80"
  protocol = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_alb_target_group.ECS-tg.arn
  }
}