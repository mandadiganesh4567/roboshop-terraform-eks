terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.70.0"
    }
  }

  backend "s3" {
    bucket = "ganesh-lab-dem"
    key    = "roboshop-vpc"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}