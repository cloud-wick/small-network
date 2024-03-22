module "network" {
    source = "./modules/network"
    vpc_name = var.vpc_name                         
    cidr_block = var.cidr_block

    

    cidr_block_pub_1  = var.cidr_block_pub_1
    subnet_name_pub_1 = var.subnet_name_pub_1

    cidr_block_pub_2  = var.cidr_block_pub_2
    subnet_name_pub_2 = var.subnet_name_pub_2

    cidr_block_pvt_1  = var.cidr_block_pvt_1
    subnet_name_pvt_1 = var.subnet_name_pvt_1

    cidr_block_pvt_2  = var.cidr_block_pvt_2
    subnet_name_pvt_2 = var.subnet_name_pvt_2

    igw = var.igw
    nat = var.nat

}

