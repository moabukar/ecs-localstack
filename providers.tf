terraform {
  # backend "s3" {
  #   bucket = "tf-state"
  #   key    = "terraform.tfstate"
  # }

  required_version = "= 1.6.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# provider "aws" {
#   region = "us-east-1"
# }


provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  s3_force_path_style          = true
  skip_credentials_validation  = true
  skip_requesting_account_id   = true
  skip_metadata_api_check      = true
  skip_region_validation       = true
  endpoints {
    ecs            = "http://localhost:4566"
    ec2            = "http://localhost:4566"
    elbv2          = "http://localhost:4566"
    route53        = "http://localhost:4566"
    iam            = "http://localhost:4566"
    sts            = "http://localhost:4566"
    logs           = "http://localhost:4566"
  }
}

