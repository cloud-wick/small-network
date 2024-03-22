variable "cidr_block"{
    type = string
    default = "10.0.0.0/16"
  
}

variable "vpc_name"{
    type = string
    
  
}


# variable "vpc_id" {                         
#     type = string  
# }


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
