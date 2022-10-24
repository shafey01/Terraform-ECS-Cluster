# Terraform-ECS-Cluster

## There are two Directories,
### 1- VPC for VPC resourses.
### 2- ECS cluster.

```
git clone from this repo.
in both VPC and ECS directories configure your backend backet in backend.tf file 
in ECS/remote_state.tf configure your remote state backet for VPC to use it as data source.
---------------------------------------------------------------------
terraform init
terraform plan
terraform apply
```

