terraform {
  backend "s3" {
    bucket         = "subhita-s3-demo-xyz" 
    key            = "subhita/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}