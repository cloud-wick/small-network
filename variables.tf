################### network ###################

variable "cidr_block"{
    type = string
    default = "10.0.0.0/16"
  
}

variable "vpc_name"{
    type = string
    
  
}


variable "cidr_block_pub_1" {

    type = string
    
}

variable "subnet_name_pub_1" {

    type = string
    
}


variable "cidr_block_pub_2" {

    type = string
    
}


variable "subnet_name_pub_2" {

    type = string
    
}


variable "cidr_block_pvt_1" {

    type = string
    
}


variable "subnet_name_pvt_1" {

    type = string
    
}

variable "cidr_block_pvt_2" {

    type = string
    
}

variable "subnet_name_pvt_2" {

    type = string
    
}

variable "igw" {

    type = string
    
}

variable "nat" {

    type = string
    
}

variable "pub_rt" {

    type = string
    
}

variable "web_rt" {

    type = string
    
}

variable "app_rt" {

    type = string
    
}


################### security ###################

variable "alb-sg" {
  type = string
}

# variable "vpc_id" {
#   type = string
# }

variable "web_ec2-sg" {
  type = string
}

variable "bastion-sg" {
  type = string
}

variable "bastion-cidrs" {
  type = list(string)
}

variable "rds-sg" {
  type = string
}

variable "rds-port" {
  
}


################### ec2 ###################


variable "web-ami" {
  type = string
}

variable "web-instance_type" {
  type = string
}

variable "web-key" {
  type = string
}

# variable "web_ec2-subnet" {
#   type = string
# }

# variable "web-sg" {
#   type = list(string)
# }

variable "web_ec2-name" {
  type = string
}

# app ec2 vars

variable "app-ami" {
  type = string
}

variable "app-instance_type" {
  type = string
}

variable "app-key" {
  type = string
}

# variable "app_ec2-subnet" {
#   type = string
# }

# variable "app-sg" {
#   type = list(string)
# }

variable "app_ec2-name" {
  type = string
}

# bas ec2 vars

variable "bas-ami" {
  type = string
}

variable "bas-instance_type" {
  type = string
}

variable "bas-key" {
  type = string
}

# variable "bas_ec2-subnet" {
#   type = string
# }

# variable "bas-sg" {
#   type = list(string)
# }

variable "bas_ec2-name" {
  type = string
}