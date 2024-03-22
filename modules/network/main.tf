resource "aws_vpc" "small-network-useast1-vpc-main" {
  cidr_block = var.cidr_block

  tags ={

    Name = var.vpc_name
  }
}

resource "aws_subnet" "small-network-useast1-subnet-pub_sub_1" {

  vpc_id     = aws_vpc.small-network-useast1-vpc-main.id                                       
  cidr_block = var.cidr_block_pub_1

  tags = {
    Name = var.subnet_name_pub_1
  }
}

resource "aws_subnet" "small-network-useast1-subnet-pub_sub_2" {

  vpc_id     = aws_vpc.small-network-useast1-vpc-main.id                                     
  cidr_block = var.cidr_block_pub_2

  tags = {
    Name = var.subnet_name_pub_2
  }
}

resource "aws_subnet" "small-network-useast1-subnet-pvt_sub_1" {

  vpc_id     = aws_vpc.small-network-useast1-vpc-main.id                                       
  cidr_block = var.cidr_block_pvt_1

  tags = {
    Name = var.subnet_name_pvt_1
  }
}

resource "aws_subnet" "small-network-useast1-subnet-pvt_sub_2" {

  vpc_id     = aws_vpc.small-network-useast1-vpc-main.id                                       
  cidr_block = var.cidr_block_pvt_2

  tags = {
    Name = var.subnet_name_pvt_2
  }
}

resource "aws_internet_gateway" "small-network-useast1-igw" {
  vpc_id = aws_vpc.small-network-useast1-vpc-main.id

  tags = {
    Name = "small-network-useast1-igw"
  }
}