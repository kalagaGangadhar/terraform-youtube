provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance-1" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [ aws_default_security_group.SG-1.id ]
  tags = {
    Name="one"
  }
  subnet_id = aws_subnet.subnet-1.id

}

resource "aws_default_security_group" "SG-1" {
  vpc_id = aws_vpc.vpc-1.id
}

resource "aws_vpc" "vpc-1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name="first"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  tags = {
    Name="subnet-1"
  }
}