output "vpc_id" {
  value       = module.vpc.vpc_id
}

output "subnet_ids" {

    value = module.vpc.public_subnets
  
}

output "public_subnets_cidr_blocks" {
  value = module.vpc.public_subnets_cidr_blocks
}