###########################
########### VPC ###########
###########################
output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of the VPC"
}

# Output para a primeira subnet pública
output "public_subnet_a_id" {
  value       = aws_subnet.public_a.id
  description = "The ID of the first public subnet"
}

# Output para a segunda subnet pública
output "public_subnet_b_id" {
  value       = aws_subnet.public_b.id
  description = "The ID of the second public subnet"
}

# Output para a primeira subnet privada
output "private_subnet_a_id" {
  value       = aws_subnet.private_a.id
  description = "The ID of the first private subnet"
}

# Output para a segunda subnet privada
output "private_subnet_b_id" {
  value       = aws_subnet.private_b.id
  description = "The ID of the second private subnet"
}


###########################
########### EC2 ###########
###########################
output "ec2_public_ip_instance_1" {
  value = aws_instance.web[0].public_ip
}

output "ec2_public_ip_instance_2" {
  value = aws_instance.web[1].public_ip
}

output "ec2_id_instance_1" {
  value = aws_instance.web[0].id
}

output "ec2_id_instance_2" {
  value = aws_instance.web[1].id
}

###########################
########### RDS ###########
###########################
output "rds_endpoint" {
  value       = aws_db_instance.postgres.endpoint
  description = "The endpoint of the RDS instance"
}

output "rds_instance_id" {
  value       = aws_db_instance.postgres.id
  description = "The ID of the RDS instance"
}