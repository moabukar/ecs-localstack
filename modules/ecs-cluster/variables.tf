variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "subnets" {
  description = "Subnets to deploy the ECS cluster"
  type        = list(string)
}
