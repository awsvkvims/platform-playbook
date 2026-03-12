resource "aws_s3_bucket" "platform_artifacts" {
  bucket = "${var.platform_name}-${var.environment}-${var.account_id}-artifacts"

  tags = merge(
    var.common_tags,
    {
      name = "${var.platform_name}-${var.environment}-artifacts"
    }
  )
}

resource "aws_s3_bucket_versioning" "platform_artifacts" {
  bucket = aws_s3_bucket.platform_artifacts.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "platform_artifacts" {
  bucket = aws_s3_bucket.platform_artifacts.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "platform_artifacts" {
  bucket = aws_s3_bucket.platform_artifacts.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}