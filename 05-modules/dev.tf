module "module_dev" {
  source = "./modules"
  region="us-east-1"
  ami="ami-0f3c7d07486cad139"
  instance_type="t2.micro"
  instance_name="ganga_ec2_dev"
  SG_name ="Ganga_SG_dev"
  vpc_cidr_block="10.0.0.0/16"
  vpc_name="ganga_vpc_dev"
  subnet_cidr_block="10.0.1.0/24"
  subnet_name="ganga_subnet_1_dev"
}