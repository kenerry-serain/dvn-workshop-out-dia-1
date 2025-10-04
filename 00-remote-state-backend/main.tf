terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.auth.region

  default_tags {
    tags = var.tags
  }

  assume_role {
    role_arn = var.auth.assume_role_arn
  }
}