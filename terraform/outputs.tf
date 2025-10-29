# ------------------------------
# Output Values
# ------------------------------

output "ec2_instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.restaurant_server.id
}

output "ec2_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.restaurant_server.public_ip
}

output "ec2_public_dns" {
  description = "The public DNS name of the EC2 instance"
  value       = aws_instance.restaurant_server.public_dns
}

output "security_group_id" {
  description = "The ID of the security group created for the instance"
  value       = aws_security_group.restaurant_sg.id
}
