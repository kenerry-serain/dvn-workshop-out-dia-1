terraform {

  backend "s3" {
    bucket = "workshop-remote-backend-bucket-654654554686"
    key    = "networking/terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "workshop-state-locking-table"
    use_lockfile = true
  }

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
