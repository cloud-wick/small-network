# sg module
module "security" {
  source = "./modules/security"
  vpc_id = module.network.vpc_id # change
  alb-sg = var.alb-sg
  web_ec2-sg = var.web_ec2-sg
  bastion-sg = var.bastion-sg
  bastion-cidrs = var.bastion-cidrs
  rds-sg = var.rds-sg
  rds-port = var.rds-port
}