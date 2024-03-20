resource "aws_vpc" "small-network-useast1-vpc-main" {
  cidr_block = var.cidr_block

  tags ={

    Name = var.vpc_name
  }
}