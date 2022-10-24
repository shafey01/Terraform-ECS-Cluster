

resource "aws_ecs_service" "nginx" {
  name            = "nginx"
  cluster         = aws_ecs_cluster.default.id
  task_definition = aws_ecs_task_definition.nginx_service.arn
  desired_count   = 1
  launch_type     = "EC2"



  load_balancer {
    target_group_arn = aws_alb_target_group.ECS-tg.arn
    container_name   = aws_ecs_task_definition.nginx_service.family
    container_port   = 80
  }


}