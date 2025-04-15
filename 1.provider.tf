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
    bucket       = "gajapathiraokatreddi.xyz"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}
provider "aws" {}
