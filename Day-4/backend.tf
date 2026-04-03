terraform {
  backend "s3" {
    bucket         = "shreyushi-s3-demo-xyz" # change this
    key            = "shreya/terraform.tfstate"
    region         = "eu-north-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}