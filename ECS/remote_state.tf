data "terraform_remote_state" "VPC" {

  backend = "s3"
  config = {
    bucket = "terraform-shafey"
    key    = "ECS-cluster/VPC/terraform.tfstate"
    region = "us-east-1"

  }

}