module "aws_db_security_group" {
  source                  = "github.com/sanijoi/MODULES/modules/sg_module"
  name_prefix             = "RDSsg"
  vpc_id                  = "vpc-0b97448f29df048bd"

  ingress_rules = [
  {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["34.204.123.44/32"]
  }
  ]
  egress_rules = [
    {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ]
}