# Terraform Platform Foundation

This directory contains the Terraform structure used by the platform starter kit.

## Structure

modules/
Reusable infrastructure modules maintained by the platform team.

environments/
Environment-specific deployment configurations.

## Environments

**dev** : Used for development and platform experimentation.

**stage** : Used for pre-production validation.

**prod** :Used for production deployments.

## Design principles

- Infrastructure defined as reusable modules
- Environment separation
- Consistent tagging and governance
- CI/CD driven deployments