provider "aws" {
  region = "us-east-1"
  
}

resource "aws_s3_bucket" "example" {
  bucket = "hemanth-s3_statelock"

  lifecycle {
    prevent_destroy = false
  }
}
