output "instance_ids" {
  description = "EC2 instance IDs"
  value       = aws_instance.nginx[*].id
}

output "public_ips" {
  description = "Public IP addresses of Nginx servers"
  value       = aws_instance.nginx[*].public_ip
}

output "public_dns" {
  description = "Public DNS names of Nginx servers"
  value       = aws_instance.nginx[*].public_dns
}

output "security_group_id" {
  description = "Nginx security group ID"
  value       = aws_security_group.nginx.id
}