# plan-deny-public-s3.rego
# Deny any Terraform plan that creates or modifies an S3 bucket
# with public access enabled. Attach to all stacks.

package spacelift

deny[reason] {
  resource := input.terraform.resource_changes[_]
  resource.type == "aws_s3_bucket_public_access_block"
  resource.change.after.block_public_acls == false
  reason := sprintf(
    "S3 bucket '%s' must have block_public_acls set to true",
    [resource.name]
  )
}

deny[reason] {
  resource := input.terraform.resource_changes[_]
  resource.type == "aws_s3_bucket_public_access_block"
  resource.change.after.block_public_policy == false
  reason := sprintf(
    "S3 bucket '%s' must have block_public_policy set to true",
    [resource.name]
  )
}
