resource "aws_vpc" "small-network-useast1-vpc-main" {
  cidr_block = var.cidr_block

  tags ={

    Name = var.vpc_name
  }
}

resource "aws_subnet" "small-network-useast1-subnet-pub_sub_1" {
    
  vpc_id     = aws_vpc.small-network-useast1-vpc-main.id                                       ## just simple as this mehema variable eka gahala thiya ganna
  cidr_block = var.cidr_block_sub

  tags = {
    Name = var.subnet_name
  }
}