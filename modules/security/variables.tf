variable "alb-sg" {
  type = string
}

variable "vpc_id" {
  type = string
}

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