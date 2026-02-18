output "vpc_id_default" {
  description = "IP da VPC default"
  value       = aws_vpc.default.id
}

output "vpc_id_provider_1" {
  description = "IP da VPC provider 1"
  value       = aws_vpc.provider_1.id
}

output "vpc_id_provider_2" {
  description = "IP da VPC provider 2"
  value       = aws_vpc.provider_2.id
}