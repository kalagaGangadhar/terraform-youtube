provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name = "test-ins"
  }

  vpc_security_group_ids = [aws_default_security_group.SG.id]
  subnet_id = aws_subnet.vpc-sub.id
}

resource "aws_default_security_group" "SG" {
  vpc_id = aws_vpc.vpc-1.id
}

resource "aws_vpc" "vpc-1" {
  cidr_block = "10.1.0.0/16"
  tags = {
    Name = "test-vpc"
  }
}

resource "aws_subnet" "vpc-sub" {
  vpc_id = aws_vpc.vpc-1.id
  cidr_block = "10.1.0.0/24"

  tags = {
    Name = "test-subnet"
  }
}