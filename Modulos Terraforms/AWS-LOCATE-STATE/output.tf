output "bucket_id" {
  value       = "aws_s3_bucket.bucket.id"
  sensitive   = true
  description = "ID da bucket criada na AWS"
}

output "bucket_arn" {
  value       = "aws_s3_bucket.bucket.arn"
  sensitive   = true
  description = "ARN da bucket criada na AWS"
}

