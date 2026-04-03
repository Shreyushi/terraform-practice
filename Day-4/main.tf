provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "shreyushi" {
  instance_type = "t3.micro"
  ami = "ami-0aaa636894689fa47" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "shreyushi-s3-demo-xyz" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}