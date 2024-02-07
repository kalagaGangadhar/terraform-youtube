module "module_prod" {
  source = "./modules"
  region="us-east-1"
  ami="ami-0f3c7d07486cad139"
  instance_type="t2.micro"
  instance_name="ganga_ec2_prod"
  SG_name ="Ganga_SG_prod"
  vpc_cidr_block="10.20.0.0/16"
  vpc_name="ganga_vpc_prod"
  subnet_cidr_block="10.20.1.0/24"
  subnet_name="ganga_subnet_1_prod"
}