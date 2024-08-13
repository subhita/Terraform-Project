provider "aws" {
  region = "us-east-1" # AWS region
}

resource "aws_instance" "EC2_Example" {
  ami = "ami-04a81a99f5ec58529" # AMI ID
  instance_type = "t2.micro"
}