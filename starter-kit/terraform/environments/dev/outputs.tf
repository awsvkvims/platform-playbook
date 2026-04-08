output "platform_artifacts_bucket_name" {
  description = "Artifacts bucket created for the dev environment"
  value       = module.aws_baseline.platform_artifacts_bucket_name
}

output "platform_artifacts_bucket_arn" {
  description = "Artifacts bucket ARN for the dev environment"
  value       = module.aws_baseline.platform_artifacts_bucket_arn
}