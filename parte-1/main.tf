terraform {
    required_providers {
      aws = {
        version = ">= 2.7.0"
        source = "hashicorp/aws"
      }
    }
    # backend "s3" {
    #   bucket = "bucket-jornada-67"
    #   key    = "terraform.tfstate"
    #   region = "us-east-1"
    #   encrypt = true
    # }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "meu_bucket_67" {
  bucket = "bucket-jornada-67"
  force_destroy = true

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

