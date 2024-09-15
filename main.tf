provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformnik1981" {
  bucket ="terraformnik1981"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformnik1981"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}
