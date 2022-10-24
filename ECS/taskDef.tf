

resource "aws_ecs_task_definition" "nginx_service" {
  family = "nginx"
  container_definitions = jsonencode([
    {
      name      = "nginx-terraform"
      image     = "nginx:latest"
      cpu       = 10
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])

  

}