output "vpc_id" {
  
  value = aws_vpc.small-network-useast1-vpc-main.id 
}

output "sub_id" {
  
  value = aws_subnet.small-network-useast1-subnet-pub_sub_1.id
}