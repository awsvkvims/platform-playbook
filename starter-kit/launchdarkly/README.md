# LaunchDarkly Integration

## Overview

This directory contains reference patterns for integrating feature management into the enterprise platform starter kit.

The goal is to support progressive delivery, safer releases, operational kill switches, and controlled experimentation.

## Scope

This reference structure includes:

- Terraform examples for managing LaunchDarkly resources where appropriate
- GitHub Actions integration patterns
- SDK integration samples for application services

## Design principles

- Feature management is optional but recommended
- Deploy and release are treated as separate concerns
- Flag usage should be observable and governed
- Sensitive credentials must never be committed to source control

## Structure

- `terraform/` - reference structure for LaunchDarkly resource management
- `github-actions/` - pipeline integration examples
- `samples/` - SDK integration examples
