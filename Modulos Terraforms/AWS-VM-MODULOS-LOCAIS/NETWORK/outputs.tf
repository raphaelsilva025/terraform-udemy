output "subnet_id" {
  value       = aws_subnet.subnet.id
  sensitive   = false
  description = "Id da subnet criada na AWS"
}

output "security_group_id" {
  value       = aws_security_group.security_group.id
  sensitive   = false
  description = "Id da security group criada na AWS"
}
