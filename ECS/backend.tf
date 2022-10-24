terraform {
  backend "s3" {
    bucket                  = "terraform-shafey"
    key                     = "ECS-cluster/ECS/terraform.tfstate"
    region                  = "us-east-1"


  }
}

