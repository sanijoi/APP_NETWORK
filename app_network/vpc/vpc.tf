module "vpc" {
  source     = "github.com/sanijoi/MODULES/modules/vpc_module"

  cidr_block = "10.0.0.0/16"
  subnet_public_1 = "10.0.1.0/24"
  subnet_public_2 = "10.0.2.0/24"
  subnet_private_1 = "10.0.12.0/24"
  subnet_private_2 = "10.0.13.0/24"
  availability_zone1 = "us-east-1a"
  availability_zone2 = "us-east-1b"
}