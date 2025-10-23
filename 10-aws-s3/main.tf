provider "aws" {
    region = "us-west-1"
}

resource "aws_s3_bucket" "finance" {
  bucket = "finance-23102025"
  tags = {
    Description = "Finance and Payroll"
  }
}

resource "aws_s3_bucket_object" "finance-2025" {
  content = "./finance/finance-2025.doc"
  key     = "finance-2025.doc"
  bucket  = aws_s3_bucket.finance.id
}

data "aws_iam_group" "finance-data" {
  group_name = "finance-analysts"
}