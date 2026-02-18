output "subnets_id" {
  value       = aws_subnet.subnet[*].id
  sensitive   = false
  description = "Id da subnet criada na AWS"
}