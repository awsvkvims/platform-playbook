# plan-require-tags.rego
# Deny any plan that creates a taggable resource without the required tags.
# Attach to all stacks.

package spacelift

required_tags := {"environment", "owner", "cost_center", "managed_by"}

# Resource types that must carry the required tags.
taggable_types := {
  "aws_s3_bucket",
  "aws_dynamodb_table",
  "aws_instance",
  "aws_eks_cluster",
  "aws_rds_cluster",
  "aws_lambda_function",
}

deny[reason] {
  resource := input.terraform.resource_changes[_]
  taggable_types[resource.type]
  resource.change.actions[_] == "create"
  tag := required_tags[_]
  not resource.change.after.tags[tag]
  reason := sprintf(
    "Resource '%s' (%s) is missing required tag '%s'",
    [resource.name, resource.type, tag]
  )
}
