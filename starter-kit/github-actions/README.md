# GitHub Actions -- golden path workflow templates

This directory contains reusable GitHub Actions workflow templates for product teams
building services on the platform.

## How to use

Copy the workflows you need into your service repository under `.github/workflows/`.
Update the environment variables and secrets references to match your service.

## Workflows

| File | Purpose | Trigger |
|------|---------|---------|
| workflows/ci.yml | Test, lint, and build on every PR and push | PR, push to main |
| workflows/deploy-dev.yml | Deploy to dev environment | Push to main |
| workflows/deploy-staging.yml | Deploy to staging with approval gate | Push to main |
| workflows/deploy-prod.yml | Deploy to prod on release | release/* tag |
| workflows/security-scan.yml | Dependency and container image scanning | PR, push to main, weekly schedule |

## GitHub environments required

These workflows expect three GitHub environments to be configured in your repository settings:

| Environment | Protection | Variables required |
|------------|-----------|-------------------|
| dev | None | AWS_ROLE_ARN, AWS_REGION, ECR_REPOSITORY |
| staging | Required reviewers | AWS_ROLE_ARN, AWS_REGION, ECR_REPOSITORY |
| prod | Required reviewers | AWS_ROLE_ARN, AWS_REGION, ECR_REPOSITORY |

## AWS authentication

All workflows use OIDC via `aws-actions/configure-aws-credentials`. No static credentials
are stored in GitHub secrets. Each environment uses a dedicated IAM role with least-privilege
permissions scoped to that environment only.

See the platform playbook for IAM role setup guidance.