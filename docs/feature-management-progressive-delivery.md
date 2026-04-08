# Feature Management and Progressive Delivery

## Overview

Feature management is a core platform capability that helps teams separate deployment from release.

It enables safer rollout patterns, faster feedback, reduced change risk, and better operational control.

This playbook treats feature management as part of the golden path for modern platform engineering.

## Why it matters

Feature management helps teams:

- Release changes gradually
- Decouple deploy from release
- Reduce change failure risk
- Enable kill switches for operational control
- Test new behavior safely
- Support controlled experimentation

## Where it fits in the platform

Feature management should be integrated into:

- Application code through SDKs
- CI/CD workflows where appropriate
- Team onboarding templates
- Progressive delivery practices
- Operational runbooks

## Example use cases

Typical use cases include:

- Dark launches
- Canary releases
- Kill switches
- Permission flags
- Migration flags
- Experimentation flags

## Reference implementation

The starter kit includes a LaunchDarkly reference structure for:

- SDK integration samples
- GitHub Actions integration patterns
- Terraform-based flag management where appropriate

## Related pages

- Three Stage Platform Strategy
- Stage 3 Golden Path Self Service
- Enterprise Platform Starter
