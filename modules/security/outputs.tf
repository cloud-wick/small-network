output "alb_sg-id" {
  value = aws_security_group.alb-sec_grp.id
}

output "web_ec2_sg-id" {
  value = aws_security_group.web_ec2-sg.id
}

output "bastion_sg-id" {
  value = aws_security_group.bastion-sg.id
}

output "rds_sg-id" {
  value = aws_security_group.rds-sg.id
}