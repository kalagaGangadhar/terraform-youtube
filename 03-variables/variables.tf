variable "region" {
  type=string
  description="used for region input"
}

variable "ami" {
  type=string
  description="used for ami input"
}

variable "instance_type" {
  type=string
  description="used for instance_type input"
}

variable "instance_name" {
  type=string
  description="used for instance_name input"
}

variable "vpc_cidr_block" {
  type=string
  description="used for vpc_cidr_block input"
}

variable "vpc_name" {
  type=string
  description="used for vpc_name input"
}

variable "subnet_cidr_block" {
  type=string
  description="used for subnet_cidr_block input"
}

variable "subnet_name" {
  type=string
  description="used for subnet_name input"
}