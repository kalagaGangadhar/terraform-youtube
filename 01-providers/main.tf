# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_instance" "example" {
  tags = {
    Name = "main"
  }
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
}
