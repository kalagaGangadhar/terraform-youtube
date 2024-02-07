# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a instance
resource "aws_instance" "example" {
  tags = {
    Name = "main"
  }
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-08db871bebc41e267" ]
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-tf-test-bucket"
  tags = {
    Name        = "My_ganga_bucket"
  }
}