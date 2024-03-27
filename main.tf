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


################### ec2 ###################
module "ec2" {
  source = "./modules/ec2"
  web-ami = var.web-ami
  web-instance_type = var.web-instance_type
  web-key = var.web-key
  web_ec2-subnet = module.network.sub_id_pvt_1 # change
  web-sg = module.security.alb_sg-id # change
  web_ec2-name = var.web_ec2-name

  app-ami = var.app-ami
  app-instance_type = var.app-instance_type
  app-key = var.app-key
  app_ec2-subnet = module.network.sub_id_pvt_2# change
  app-sg = module.security.web_ec2_sg-id # change
  app_ec2-name = var.app_ec2-name

  bas-ami = var.bas-ami
  bas-instance_type = var.bas-instance_type
  bas-key = var.bas-key
  bas_ec2-subnet = module.network.sub_id_pub_1 # change
  bas-sg = module.security.bastion_sg-id # change
  bas_ec2-name = var.bas_ec2-name
}