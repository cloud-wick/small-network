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