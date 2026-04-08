# Platform Playbook

## Overview

This playbook describes how to build a high-performing DevOps and platform engineering capability
and create an Internal Developer Platform from the ground up.

It combines platform strategy, operating model design, technical architecture, governance,
reliability practices, and a reference starter kit for enterprise teams.

## Why this playbook exists

Many platform efforts fail because teams build tools before they build trust, visibility,
and adoption. Product teams often experience platform initiatives as additional process,
reduced autonomy, or a new delivery tax.

This playbook takes a different approach.

It treats the platform as an internal product and uses a 3-stage model to guide adoption:

1. Bootstrap through visibility
2. Co-create with a pilot team
3. Establish the golden path and self-service

## What you will find here

- Building a high-performing DevOps and platform engineering team
- Defining a platform operating model
- Using Backstage as the entry point for an Internal Developer Platform
- Building enterprise-grade CI/CD, Infrastructure as Code, observability, and governance
- Measuring platform adoption and engineering outcomes
- Launching a platform team in the first 30, 60, and 90 days

## Reference toolchain

This playbook is based on a reference toolchain that includes:

- AWS
- Terraform and Spacelift
- GitHub Actions
- Backstage
- LaunchDarkly
- Observability and reliability tooling

## Recommended reading order

Start here if you are new to this playbook:

1. [Platform Vision](platform-vision.md)
2. [Why Platforms Fail](why-platforms-fail.md)
3. [Three Stage Platform Strategy](three-stage-platform-strategy.md)
4. [Stage 1 -- Bootstrap and Visibility](stage-1-bootstrap-visibility.md)
5. [Stage 2 -- Pilot Co-creation](stage-2-pilot-co-creation.md)
6. [Stage 3 -- Golden Path and Self-service](stage-3-golden-path-self-service.md)
7. [Team Design and Operating Model](team-design-and-operating-model.md)
8. [Platform Toolchain Architecture](platform-toolchain-architecture.md)
9. [Backstage IDP](backstage-idp.md)
10. [Feature Management and Progressive Delivery](feature-management-progressive-delivery.md)
11. [Governance, Security, and Compliance](governance-security-compliance.md)
12. [Reliability, SLI, and SLO](reliability-sli-slo.md)
13. [Metrics and Adoption](metrics-and-adoption.md)
14. [Launch Roadmap 30-60-90](launch-roadmap-30-60-90.md)

## Starter kit

This repository also contains an [Enterprise Platform Starter Kit](enterprise-platform-starter.md)
that platform teams can clone, configure, and extend. It provides a reference implementation
covering Terraform, GitHub Actions, Spacelift, Backstage, observability, and feature management.