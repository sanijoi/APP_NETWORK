resource "aws_db_subnet_group" "subnet1" {
  name                    = "main"
  subnet_ids              = ["subnet-0cd14e61b2926e206", "subnet-03af433e8bc589daf"]
}