provider "aws" {
  region = "us-east-1"
  
}

resource "aws_s3_bucket" "example" {
  bucket = "hemanth-s3-state-lock"

  lifecycle {
    prevent_destroy = false
  }
}
