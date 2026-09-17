terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "data_lake" {
  # Nama bucket bersifat unik secara global di seluruh AWS. Ganti "<namamu>"
  # dengan nama/inisial Anda sendiri sebelum menjalankan terraform apply.
  bucket = "aien-terry-datalake-dev"

  tags = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}