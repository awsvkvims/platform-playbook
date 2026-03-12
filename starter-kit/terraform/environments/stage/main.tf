terraform {
  required_version = ">= 1.8.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = local.common_tags
  }
}

locals {
  common_tags = merge(
    {
      platform    = var.platform_name
      environment = var.environment
      owner       = var.owner
      cost_center = var.cost_center
      managed_by  = var.managed_by
    },
    var.extra_tags
  )
}

module "aws_baseline" {
  source = "../../modules/aws-baseline"

  platform_name = var.platform_name
  environment   = var.environment
  account_id    = var.account_id
  common_tags   = local.common_tags
}