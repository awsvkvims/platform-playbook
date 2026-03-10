# Enterprise Platform Starter Kit

## Overview

This starter kit provides a reference implementation structure for building an enterprise DevOps and platform engineering capability.

It is designed to be cloned, configured, and extended by platform teams. It is not intended to be a one-click platform. It is an accelerator and reference architecture aligned to the platform playbook.

## Goals

The starter kit is designed to help platform teams:

- Establish a clear platform structure
- Build reusable CI/CD and Infrastructure as Code capabilities
- Configure a Backstage-based Internal Developer Platform
- Apply governance, security, and compliance controls
- Create a golden path for onboarding teams and services

## Toolchain

The reference toolchain includes:

- AWS
- Terraform
- Spacelift
- GitHub Actions
- Backstage
- Observability and reliability tooling

## Structure

### `architecture/`

Reference architecture documentation and diagrams.

### `backstage/`

Backstage configuration, catalog definitions, and templates for service onboarding.

### `terraform/`

Terraform module layout, environments, and reference structure for platform infrastructure.

### `spacelift/`

Spacelift stack and policy reference structure for Infrastructure as Code orchestration and governance.

### `github-actions/`

Reusable GitHub Actions workflow templates for CI, deployment, and security checks.

### `policies/`

Reference policy definitions for compliance, tagging, encryption, and network controls.

### `observability/`

Reference structure for SLI, SLO, dashboards, alerts, and runbooks.

### `examples/`

Example services and onboarding patterns that demonstrate the golden path.

## How to use this starter kit

1. Review the platform playbook in the `docs/` directory
2. Adapt the structure in this starter kit to your enterprise needs
3. Configure cloud, identity, security, and delivery standards
4. Start with a pilot team before creating broad golden paths
5. Extend templates and workflows based on proven usage

## Design principles

- Platform as a product
- Reusable by default
- Secure by default
- Observable by default
- Self-service where appropriate
- Governance through automation