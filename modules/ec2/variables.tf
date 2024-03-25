# web ec2 vars

variable "web-ami" {
  type = string
}

variable "web-instance_type" {
  type = string
}

variable "web-key" {
  type = string
}

variable "web_ec2-subnet" {
  type = string
}

variable "web-sg" {
  type = list(string)
}

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

variable "app_ec2-subnet" {
  type = string
}

variable "app-sg" {
  type = list(string)
}

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

variable "bas_ec2-subnet" {
  type = string
}

variable "bas-sg" {
  type = list(string)
}

variable "bas_ec2-name" {
  type = string
}