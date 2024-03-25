############# EC2 #############

module "ec2" {
  source = "./modules/ec2"
  web-ami = var.web-ami
  web-instance_type = var.web-instance_type
  web-key = var.web-key
  web_ec2-subnet = module.network.sub1 # change
  web-sg = module.security.sg1 # change
  web_ec2-name = var.web_ec2-name

  app-ami = var.app-ami
  app-instance_type = var.app-instance_type
  app-key = var.app-key
  app_ec2-subnet = module.network.sub1 # change
  app-sg = module.security.sg1 # change
  app_ec2-name = var.app_ec2-name

  bas-ami = var.bas-ami
  bas-instance_type = var.bas-instance_type
  bas-key = var.bas-key
  bas_ec2-subnet = module.network.sub1 # change
  bas-sg = module.security.sg1 # change
  bas_ec2-name = var.bas_ec2-name
}