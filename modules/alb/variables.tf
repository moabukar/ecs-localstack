variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "subnets" {
  description = "The subnets for the ALB"
  type        = list(string)
}

variable "ecs_service_security_group" {
  description = "Security group ID for ECS service"
  type        = string
}
