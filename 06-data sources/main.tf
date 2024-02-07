provider "aws" {
  region = "us-east-1"
}

data "aws_default_security_group" "SG" {
  Name= "all"
}

resource "aws_instance" "exam" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name= "data"
  }
  vpc_security_group_ids = [ data.aws_default_security_group.SG.id ]
}