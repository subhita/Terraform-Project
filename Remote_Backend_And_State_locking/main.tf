provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "subhita" {
  instance_type = "t2.micro"
  ami = "ami-04a81a99f5ec58529" # AMI ID
  subnet_id = "subnet-019ea91ed9b5252e7" # Subnet ID
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "subhita-s3-demo-xyz" # Name of bucket
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