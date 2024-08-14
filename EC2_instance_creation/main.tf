provider "aws" {
  region = "us-east-1" # AWS Region
}

resource "aws_instance" "example" {
  ami = "ami-04a81a99f5ec58529" # AMI ID
  instance_type = "t2.micro"
    subnet_id = "subnet-055723a7776e6467"   # subnet ID
}
