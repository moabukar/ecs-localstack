# ECS on localstack

## Setup


```bash
tflocal init
tflocal plan
tflocal apply

tflocal output alb_dns_name


## Outputs

alb_dns_name = "nginx-alb.elb.localhost.localstack.cloud"
ecs_service_arn = "arn:aws:ecs:us-east-1:000000000000:service/nginx-cluster/nginx-service"
public_subnets = [
  "subnet-2c4959a0",
  "subnet-daee4d3a",
]
route53_record = "nginx.dummy.local"
route53_zone_name = "dummy.local"
vpc_id = "vpc-7ad5a4b6"

## Access

http://localhost:4566 or http://nginx.dummy.local


/etc/ hosts>> 127.0.0.1 nginx.dummy.local

```

## Debugging

```bash

awslocal ecs list-tasks --cluster arn:aws:ecs:us-east-1:000000000000:cluster/nginx-cluster

awslocal ecs describe-tasks --cluster arn:aws:ecs:us-east-1:000000000000:cluster/nginx-cluster --tasks 7470dbd3-c3ab-4b46-bc78-750143af1ca4

awslocal elbv2 describe-target-health --target-group-arn arn:aws:elasticloadbalancing:us-east-1:000000000000:targetgroup/ecs-target-group/50f52573

awslocal elbv2 describe-listeners --load-balancer-arn arn:aws:elasticloadbalancing:us-east-1:000000000000:loadbalancer/app/nginx-alb/bf2137e4

```
