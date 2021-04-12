provider "aws" {
  region = "sa-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "lab-terraform"
    key    = "terraform-s3.tfstate"
    region = "sa-east-1"
  }
}