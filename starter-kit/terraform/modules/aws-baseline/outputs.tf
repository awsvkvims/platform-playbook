output "platform_artifacts_bucket_name" {
  description = "Artifacts bucket name"
  value       = aws_s3_bucket.platform_artifacts.bucket
}

output "platform_artifacts_bucket_arn" {
  description = "Artifacts bucket ARN"
  value       = aws_s3_bucket.platform_artifacts.arn
}