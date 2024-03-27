# alb sec grp
resource "aws_security_group" "alb-sec_grp" {
  name = var.alb-sg
  description = "enable https/http on port 443/80"
  vpc_id = var.vpc_id

  ingress {
    description = "http access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

   ingress {
    description = "https access"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

   egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.alb-sg
  }
}


# web ec2 sec grp
resource "aws_security_group" "web_ec2-sg" {
  name = var.web_ec2-sg
  description = "enable https/http on port 443/80 via alb_sg"
  vpc_id = var.vpc_id

  ingress {
    description = "http access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    security_groups = [aws_security_group.alb-sec_grp.id]
  }

   ingress {
    description = "https access"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    security_groups = [aws_security_group.alb-sec_grp.id]
  }

   egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.web_ec2-sg
  }
}


# bastion ec2 sec grp
resource "aws_security_group" "bastion-sg" {
  name = var.bastion-sg
  description = "enable https/http/rdp on port 443/80/3389"
  vpc_id = var.vpc_id

  ingress {
    description = "rdp access"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = var.bastion-cidrs
  }

  #  ingress {
  #   description = "https access"
  #   from_port   = 443
  #   to_port     = 443
  #   protocol    = "tcp"
  #   cidr_blocks = var.bastion-cidrs
  # }

   egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.bastion-sg
  }
}


# rds sec grp
resource "aws_security_group" "rds-sg" {
  name = var.rds-sg
  description = "enable rds access via bastion"
  vpc_id = var.vpc_id

  ingress {
    description = "rds access"
    from_port   = var.rds-port
    to_port     = var.rds-port
    protocol    = "tcp"
    security_groups = [aws_security_group.bastion-sg.id]
  }

   egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.rds-sg
  }
}