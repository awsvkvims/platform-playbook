# Three Stage Platform Strategy

## Overview

This playbook uses a 3-stage strategy for building and adopting a platform:

1. Bootstrap through visibility
2. Co-create with a pilot team
3. Establish the golden path and self-service

The purpose of this strategy is to avoid the most common platform failure mode: building a platform in isolation 
and expecting teams to adopt it because it exists.

Instead, the platform is treated as an internal product.

## Guiding principles

The strategy is based on the following principles:

- Visibility before control
- Co-creation before standardization
- Enablement before enforcement
- Product thinking before platform sprawl
- Golden paths based on proven usage

## Stage 1 - Bootstrap through visibility

The first stage creates enough visibility into the current delivery system so teams can understand what they own, how 
they deploy, what infrastructure they depend on, and where technical or compliance debt exists.

Typical outcomes include:

- Service inventory
- Pipeline inventory
- Infrastructure inventory
- Compliance gap visibility
- Ownership transparency

The goal is not to replace current workflows. The goal is to create shared understanding.

## Stage 2 - Co-create with a pilot team

The second stage works with a volunteer or pilot team, ideally one that is already experiencing delivery friction or 
compliance debt.

Platform engineers and the pilot team collaborate to build:

- Initial Terraform modules
- Initial CI/CD workflow templates
- Initial policy and compliance controls
- Initial observability and reliability patterns

This stage is iterative. The platform is refined through real usage over time.

## Stage 3 - Establish the golden path and self-service

The third stage turns the validated patterns from the pilot into reusable platform capabilities.

Typical outputs include:

- Reusable Terraform modules
- Reusable GitHub Actions workflows
- Backstage service onboarding templates
- Standard observability patterns
- Policy-based guardrails
- Self-service team onboarding

The goal is to reduce the time required to onboard a new service or team while maintaining governance, reliability, and 
developer experience.

## Why this model works

This model works because it aligns platform evolution with real team needs.

It helps avoid:

- Over-engineering
- Low adoption
- Excessive governance overhead
- Platform team isolation
- Tool-first thinking

It also creates trust. Teams adopt the platform because it solves real problems, not because it is mandated.

## Related pages

- Stage 1 Bootstrap Visibility
- Stage 2 Pilot Co Creation
- Stage 3 Golden Path Self Service
- Team Design and Operating Model
- Backstage IDP