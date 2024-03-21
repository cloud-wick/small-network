variable "cidr_block"{
    type = string
    default = "10.0.0.0/16"
  
}

variable "vpc_name"{
    type = string
    default = "small-network-useast1-vpc-main"
  
}

variable "vpc_id" {                         ## ***** keyma point eka vpc id eka wena module ekaka thibbama just variablized it and keep as this. ** ##
    type = string  
}

variable "cidr_block_sub" {
    type = string
    default = "10.0.1.0/24"
}

variable "subnet_name" {

    type = string
    default = "small-networkankha-useast1-subnet-pub_sub_1"
}