output "platform_artifacts_bucket_name" {
  description = "Artifacts bucket name for dev"
  value       = module.aws_baseline.platform_artifacts_bucket_name
}

output "platform_artifacts_bucket_arn" {
  description = "Artifacts bucket ARN for dev"
  value       = module.aws_baseline.platform_artifacts_bucket_arn
}

output "terraform_state_bucket_name" {
  description = "Terraform remote state bucket name for dev"
  value       = module.aws_baseline.terraform_state_bucket_name
}

output "terraform_locks_table_name" {
  description = "DynamoDB state lock table name for dev"
  value       = module.aws_baseline.terraform_locks_table_name
}