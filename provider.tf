terraform {
  backend "s3" {}
}


provider "aws" {
  region = var.AWS_REGION
}

