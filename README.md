# Platform Playbook

A platform engineering playbook and enterprise DevOps starter kit for teams building Internal Developer Platforms on AWS.

[![Docs](https://img.shields.io/badge/docs-platform--playbook-blue)](https://awsvkvims.github.io/platform-playbook)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![CI](https://github.com/awsvkvims/platform-playbook/actions/workflows/docs.yml/badge.svg)](https://github.com/awsvkvims/platform-playbook/actions)

---

## Purpose

This repository helps platform engineering leaders, DevOps managers, and enterprise architects build a high-performing DevOps capability and create an Internal Developer Platform (IDP) from the ground up.

It ships two connected products:

1. **A documentation site** -- published to GitHub Pages via MkDocs Material
2. **An enterprise starter kit** -- Terraform, GitHub Actions, Spacelift, and Backstage scaffolding that teams can clone and extend

---

## Quick start
```bash
# 1. Clone the repo
git clone https://github.com/awsvkvims/platform-playbook.git
cd platform-playbook

# 2. Browse the docs locally
pip install -r requirements.txt
mkdocs serve

# 3. Explore the starter kit
ls starter-kit/
```

Then read the [Platform Playbook docs](https://awsvkvims.github.io/platform-playbook) for the full rollout guide.

---

## What's included

### Platform Playbook (docs/)

Strategic and operational guidance for platform teams:

- 3-stage platform rollout strategy (bootstrap -> co-create -> golden path)
- How to build and organise a platform engineering team
- Internal Developer Platform design with Backstage
- CI/CD, Infrastructure as Code, observability, reliability, and governance practices
- Golden path templates for product teams

### Enterprise Platform Starter Kit (starter-kit/)

Reference implementation for AWS-based platforms:

| Area | Contents |
|------|----------|
| AWS foundations | VPC, IAM, S3 remote state, account structure |
| Terraform modules | Reusable modules and environment layout (dev/staging/prod) |
| Spacelift | Stack configs and drift-detection policies |
| GitHub Actions | Reusable CI/CD workflow templates |
| Backstage | Catalog scaffolding and service templates |
| Security | IAM guardrails, scanning pipeline steps (in progress) |
| Observability | Prometheus/Grafana configs (in progress) |

---

## Core approach

This playbook uses a 3-stage platform strategy:

1. **Bootstrap** -- establish visibility, remote state, and a thin golden path
2. **Co-create** -- work alongside a pilot product team to prove value
3. **Scale** -- establish the self-service platform and golden path for all teams

The guiding principle: treat the platform as an **internal product**, not a central control function.

---

## Repository structure
```
platform-playbook/
  .github/
    workflows/         # CI -- docs publishing, Terraform validate and deploy
  diagrams/            # Architecture diagrams (draw.io / Mermaid)
  docs/                # MkDocs source -- the playbook content
  scripts/             # Utility scripts (bootstrap, lint, etc.)
  starter-kit/         # Reference platform implementation
    backstage/         # Backstage catalog and templates
    github-actions/    # Reusable workflow templates
    spacelift/         # Spacelift stacks and policies
    terraform/         # Terraform modules and environments
  templates/           # Reusable doc and config templates
  mkdocs.yml           # Docs site configuration
  requirements.txt     # Python deps for MkDocs
```
---

## Prerequisites

| Tool | Version | Purpose |
|------|---------|---------|
| Terraform | >= 1.6 | Infrastructure as Code |
| AWS CLI | >= 2.x | AWS authentication |
| Node.js | >= 18 | Backstage |
| Python | >= 3.10 | MkDocs docs site |
| Docker | any | Local Backstage dev |

---

## Who this is for

- Platform engineering leads and DevOps managers
- Enterprise architects designing IDPs
- Engineering enablement teams
- Developers building on top of an internal platform

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Contributions, issues, and PRs are welcome.

---

## License

MIT -- see [LICENSE](LICENSE).