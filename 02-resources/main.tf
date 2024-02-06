provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "first" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="one"
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name="first"
  }
}