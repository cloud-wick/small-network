# tf file to create key paird and secrets in secret manager

######################## pem files ########################

provider "aws" {
  region = "us-east-1" 
}

# Generate a private key
resource "tls_private_key" "my_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}


# create web-ec2 pem
resource "aws_key_pair" "web-key_pair" {
  key_name   = "small_network-web_ec2-kp"
  public_key = tls_private_key.my_key.public_key_openssh
}

# output web-ec2 pem
resource "local_file" "local-web_ec2-key" {
  filename = "small_network-web_ec2-kp.pem"
  content  = tls_private_key.my_key.private_key_pem
}


# create app-ec2 pem
resource "aws_key_pair" "app-key_pair" {
  key_name   = "small_network-app_ec2-kp"
  public_key = tls_private_key.my_key.public_key_openssh
}

# output app-ec2 pem
resource "local_file" "local-app_ec2-key" {
  filename = "small_network-app_ec2-kp.pem"
  content  = tls_private_key.my_key.private_key_pem
}


# create bas-ec2 pem
resource "aws_key_pair" "bas-key_pair" {
  key_name   = "small_network-bas_ec2-kp"
  public_key = tls_private_key.my_key.public_key_openssh
}

# output bas-ec2 pem
resource "local_file" "local-bas_ec2-key" {
  filename = "small_network-bas_ec2-kp.pem"
  content  = tls_private_key.my_key.private_key_pem
}


######################## rds secrets ########################

resource "aws_secretsmanager_secret" "rds-secret" {
   name = "small_network-rds_creds"
}
 
# secret versions for rds
 
resource "aws_secretsmanager_secret_version" "secret-version" {
  secret_id = aws_secretsmanager_secret.rds-secret.id
  secret_string = <<EOF
   {
    "username": "rdsadmin",
    "password": "F#9#C16iMG7Y6*PVe=bG"
   }
EOF
}