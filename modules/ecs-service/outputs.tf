output "service_arn" {
  description = "The ARN (ID) of the ECS Service"
  value       = aws_ecs_service.nginx.id
}
