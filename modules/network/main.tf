
############################################# VPC #########################################################

resource "aws_vpc" "small_network-useast1-vpc-main" {
  cidr_block = var.cidr_block

  tags ={

    Name = var.vpc_name
  }
}

############################################# SUBNETs #########################################################

resource "aws_subnet" "small_network-useast1-subnet-pub_sub_1" {

  vpc_id     = aws_vpc.small_network-useast1-vpc-main.id                                       
  cidr_block = var.cidr_block_pub_1

  tags = {
    Name = var.subnet_name_pub_1
  }
}

resource "aws_subnet" "small_network-useast1-subnet-pub_sub_2" {

  vpc_id     = aws_vpc.small_network-useast1-vpc-main.id                                     
  cidr_block = var.cidr_block_pub_2

  tags = {
    Name = var.subnet_name_pub_2
  }
}

resource "aws_subnet" "small_network-useast1-subnet-pvt_sub_1" {

  vpc_id     = aws_vpc.small_network-useast1-vpc-main.id                                       
  cidr_block = var.cidr_block_pvt_1

  tags = {
    Name = var.subnet_name_pvt_1
  }
}

resource "aws_subnet" "small_network-useast1-subnet-pvt_sub_2" {

  vpc_id     = aws_vpc.small_network-useast1-vpc-main.id                                       
  cidr_block = var.cidr_block_pvt_2

  tags = {
    Name = var.subnet_name_pvt_2
  }
}


############################################# GATEWAYS #########################################################

resource "aws_internet_gateway" "small_network-useast1-igw" {
  vpc_id = aws_vpc.small_network-useast1-vpc-main.id

  tags = {
    Name = var.igw

  }
}

resource "aws_eip" "small_network-useast1-eip" {
  domain = "vpc"

  #associate_with_private_ip = "10.0.0.12"
  #depends_on                = [aws_nat_gateway.small_network-useast1-nat]
}

resource "aws_nat_gateway" "small_network-useast1-nat" {
  allocation_id = aws_eip.small_network-useast1-eip.id
  subnet_id     = aws_subnet.small_network-useast1-subnet-pub_sub_1.id

  tags = {
    Name = var.nat
  }


  depends_on = [aws_internet_gateway.small_network-useast1-igw]
}

############################################# ROUTE TABLES #########################################################

