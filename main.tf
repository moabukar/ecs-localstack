module "vpc" {
  source = "./modules/vpc"

  # manage_default_network_acl = false
}

module "ecs_cluster" {
  source  = "./modules/ecs-cluster"
  vpc_id  = module.vpc.vpc_id
  subnets = module.vpc.private_subnets
}

module "ecs_service" {
  source                 = "./modules/ecs-service"
  cluster_id             = module.ecs_cluster.cluster_id
  alb_target_group_arn   = module.alb.target_group_arn
  subnets                = module.vpc.private_subnets
  security_group_id      = module.vpc.ecs_service_sg_id
}

module "alb" {
  source                    = "./modules/alb"
  vpc_id                    = module.vpc.vpc_id
  subnets                   = module.vpc.public_subnets
  ecs_service_security_group = module.vpc.alb_sg_id
}

module "route53" {
  source       = "./modules/r53"
  alb_dns_name = module.alb.dns_name
}
