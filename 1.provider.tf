terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.93.0"
    }
  }
  backend "s3" {
    bucket = "gajapathiraokatreddi.xyz"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {}