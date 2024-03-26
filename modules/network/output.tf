output "vpc_id" {
  
  value = aws_vpc.small_network-useast1-vpc-main.id 
}

output "sub_id_pub_1" {
  
  value = aws_subnet.small_network-useast1-subnet-pub_sub_1.id
}

output "sub_id_pub_2" {
  
  value = aws_subnet.small_network-useast1-subnet-pub_sub_2.id
}

output "sub_id_pvt_1" {
  
  value = aws_subnet.small_network-useast1-subnet-pvt_sub_1.id
}

output "sub_id_pvt_2" {
  
  value = aws_subnet.small_network-useast1-subnet-pvt_sub_2.id
}