output "subnet_0_id" {
  value       = aws_subnet.subnet[0].id
  sensitive   = false
  description = "Id da subnet criada na AWS"
}

output "subnet_1_id" {
  value       = aws_subnet.subnet[1].id
  sensitive   = false
  description = "Id da subnet criada na AWS"
}

output "subnet_2_id" {
  value       = aws_subnet.subnet[2].id
  sensitive   = false
  description = "Id da subnet criada na AWS"
}