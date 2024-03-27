################### network ###################
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

    pub_rt = var.pub_rt
    web_rt = var.web_rt
    app_rt = var.app_rt

}


################### security ###################
module "security" {
  source = "./modules/security"
  vpc_id = module.network.vpc_id
  alb-sg = var.alb-sg
  web_ec2-sg = var.web_ec2-sg
  bastion-sg = var.bastion-sg
  bastion-cidrs = var.bastion-cidrs
  rds-sg = var.rds-sg
  rds-port = var.rds-port
}