terraform {
  backend "s3" {
    bucket                  = "terraform-shafey"
    key                     = "ECS-cluster/VPC/terraform.tfstate"
    region                  = "us-east-1"


  }
}

