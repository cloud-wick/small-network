# web ec2
resource "aws_instance" "web_ec2" {
  ami                    = var.web-instance_type
  instance_type          = var.web-instance_type    
  key_name               = var.web-key
  subnet_id              = var.web_ec2-subnet
  associate_public_ip_address = false
  security_groups = var.web-sg
  tags = {
    Name = var.web_ec2-name
  }
}

# app ec2
resource "aws_instance" "app_ec2" {
  ami                    = var.app-instance_type
  instance_type          = var.app-instance_type    
  key_name               = var.app-key
  subnet_id              = var.app_ec2-subnet
  associate_public_ip_address = false
  security_groups = var.app-sg
  tags = {
    Name = var.app_ec2-name
  }
}

# bas ec2
resource "aws_instance" "app_ec2" {
  ami                    = var.bas-instance_type
  instance_type          = var.bas-instance_type    
  key_name               = var.bas-key
  subnet_id              = var.bas_ec2-subnet
  associate_public_ip_address = true
  security_groups = var.bas-sg
  tags = {
    Name = var.bas_ec2-name
  }
}