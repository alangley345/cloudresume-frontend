provider "aws" {
  region  = "us-east-1"
}

#define location of state file
terraform {
  backend "s3" {
    bucket = "myterraformcode"
    key    = "prod/cloudresume-backend.tf"
    region = "us-east-1"
  }

}