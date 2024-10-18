terraform {
  backend "s3" {
    bucket         = "tf-backend-bucket-73"
    key            = "global/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-state-lock"
    encrypt        = true
  }
}



provider "aws" {
  region = "us-east-1" # Don't change the region
}