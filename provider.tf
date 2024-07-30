terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.59.0"
    }
  }
   backend "s3" {
   bucket = "daws78s-remote-states"
    key    = "terraform-provisioners"
    region = "us-east-1"
    dynamodb_table = "daws78s-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}