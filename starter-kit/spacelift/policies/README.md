# Spacelift policies

Spacelift policies are written in Rego (OPA) and attached to stacks to control
when runs trigger, what plans are allowed, and who can approve.

## Policy types used here

| File | Type | Purpose |
|------|------|---------|
| push-default.rego | push | Trigger runs on pushes to main that touch Terraform files |
| push-prod.rego | push | Block prod runs unless triggered by a release tag |
| plan-deny-public-s3.rego | plan | Deny any plan that creates a public S3 bucket |
| plan-require-tags.rego | plan | Deny any plan that creates resources without required tags |

## Attaching policies to stacks

In the Spacelift UI: Stack settings -> Policies -> Attach policy.

Attach push-default.rego to: platform-dev, platform-staging
Attach push-prod.rego to: platform-prod
Attach plan-deny-public-s3.rego to: platform-dev, platform-staging, platform-prod
Attach plan-require-tags.rego to: platform-dev, platform-staging, platform-prod