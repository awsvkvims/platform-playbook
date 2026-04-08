output "platform_artifacts_bucket_name" {
  description = "Artifacts bucket name"
  value       = aws_s3_bucket.platform_artifacts.bucket
}

output "platform_artifacts_bucket_arn" {
  description = "Artifacts bucket ARN"
  value       = aws_s3_bucket.platform_artifacts.arn
}

output "terraform_state_bucket_name" {
  description = "Terraform remote state bucket name"
  value       = aws_s3_bucket.terraform_state.bucket
}

output "terraform_state_bucket_arn" {
  description = "Terraform remote state bucket ARN"
  value       = aws_s3_bucket.terraform_state.arn
}

output "terraform_locks_table_name" {
  description = "DynamoDB table name for Terraform state locking"
  value       = aws_dynamodb_table.terraform_locks.name
}