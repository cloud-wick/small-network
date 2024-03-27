################### network ###################

vpc_name = "small_network-useast1-vpc-main"
cidr_block = "10.0.0.0/16"


cidr_block_pub_1  = "10.0.1.0/24"
subnet_name_pub_1 = "small_network-useast1-subnet-pub_sub_1"

cidr_block_pub_2  = "10.0.2.0/24"
subnet_name_pub_2 = "small_network-useast1-subnet-pub_sub_2"

cidr_block_pvt_1  = "10.0.3.0/24"
subnet_name_pvt_1 = "small_network-useast1-subnet-pvt_sub_2"

cidr_block_pvt_2  = "10.0.4.0/24"
subnet_name_pvt_2 = "small_network-useast1-subnet-pvt_sub_2"

igw = "small_network-useast1-igw"

nat = "small_network-useast1-nat"

pub_rt = "small_network-useast1-pub_rt"
app_rt = "small_network-useast1-app_rt"
web_rt = "small_network-useast1-web_rt"


################### security ###################

alb-sg = "small_network-us_east_1-alb-sg"
web_ec2-sg = "small_network-us_east_1-web_ec2-sg"
bastion-sg = "small_network-us_east_1-bastion-sg"
bastion-cidrs = [ "1.2.3.4/32" ] # change
rds-sg = "small_network-us_east_1-rds-sg"
rds-port = 5432 # change