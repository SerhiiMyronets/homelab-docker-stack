terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }

  backend "s3" {
    bucket = "serhii-myronets"
    key    = "homelab/vault-kms/terraform.tfstate"
    region = "us-east-1"

  }
}

provider "aws" {
  region = var.aws_region
}
