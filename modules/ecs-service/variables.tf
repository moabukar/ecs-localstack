variable "cluster_id" {
  description = "The ECS cluster ID"
  type        = string
}

variable "subnets" {
  description = "The subnets for the ECS service"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID for ECS service"
  type        = string
}

variable "alb_target_group_arn" {
  description = "The ALB target group ARN"
  type        = string
}
