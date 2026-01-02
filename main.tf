terraform {
  required_version = ">= 1.0"

  backend "kubernetes" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_s3_bucket" "main" {
  bucket = "DAMKDMAKDKAMDKAM123"

  tags = {
    ManagedBy = "Terraform"
  }
}

output "bucket_arn" {
  value = aws_s3_bucket.main.arn
}