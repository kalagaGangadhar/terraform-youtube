provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "instance-1" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  vpc_security_group_ids = [ aws_default_security_group.SG-1.id ]
  tags = {
    Name="${var.instance_name}"
  }
  subnet_id = aws_subnet.subnet-1.id

}

resource "aws_default_security_group" "SG-1" {
  vpc_id = aws_vpc.vpc-1.id
  tags = {
    Name="${var.SG_name}"
  }
}

resource "aws_vpc" "vpc-1" {
  cidr_block = "${var.vpc_cidr_block}"
  tags = {
    Name="${var.vpc_name}"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = "${var.subnet_cidr_block}"
  tags = {
    Name="${var.subnet_name}"
  }
}