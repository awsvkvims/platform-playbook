# Workflow templates

Copy these workflow files into your service repository under `.github/workflows/`.

| File | Purpose |
|------|---------|
| ci.yml | Lint, test, build, and push image on every PR and merge to main |
| deploy-dev.yml | Deploy to dev on merge to main |
| deploy-staging.yml | Deploy to staging on merge to main (requires environment approval) |
| deploy-prod.yml | Deploy to prod on release tag (requires environment approval) |
| security-scan.yml | Trivy dependency and image scanning, uploads to GitHub Security tab |

See the parent README for environment setup and IAM role configuration requirements.