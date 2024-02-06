provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance-1" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [ "sg-08db871bebc41e267" ]
#  vpc_security_group_ids = aws_vpc.vpc-1.default_security_group_id
  tags = {
    Name="one"
  }
  subnet_id = aws_subnet.subnet-1.id

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
  tags = {
    Name="subnet-1"
  }
}