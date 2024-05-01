provider "aws"{
  region = "us-east-1"
}

resource "aws_instance" "instance" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="test"
  }
  vpc_security_group_ids = [ "sg-08db871bebc41e267" ]
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-groboshop-bucket"
}