output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = module.alb.dns_name
}

output "ecs_service_arn" {
  description = "The ARN of the ECS Service"
  value       = module.ecs_service.service_arn
}

output "route53_zone_name" {
  description = "The Route 53 zone name"
  value       = module.route53.route53_zone_name
}

output "route53_record" {
  description = "The Route 53 record for the ALB"
  value       = module.route53.route53_record_name
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "The public subnets in the VPC"
  value       = module.vpc.public_subnets
}
