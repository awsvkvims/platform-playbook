# Spacelift

This directory contains Spacelift stack definitions and policy templates for managing
Terraform infrastructure through the platform.

## What is Spacelift

Spacelift is a CI/CD orchestration platform for Infrastructure as Code. In this platform
it sits above GitHub Actions -- GitHub Actions handles application CI/CD while Spacelift
handles Terraform plan and apply with built-in drift detection, audit trails, and
policy enforcement.

## Directory structure

spacelift/
    stacks/       -- stack definition templates (one per environment)
    policies/     -- OPA-based push, plan, and approval policies

## How stacks relate to environments

Each Terraform environment has a corresponding Spacelift stack:

| Stack | Terraform path | Branch | Auto-apply |
|-------|---------------|--------|-----------|
| platform-dev | starter-kit/terraform/environments/dev | main | yes |
| platform-staging | starter-kit/terraform/environments/staging | main | no -- requires approval |
| platform-prod | starter-kit/terraform/environments/prod | release/* tags | no -- requires approval |

## Prerequisites

- A Spacelift account with an AWS integration configured
- An IAM role in each AWS account that Spacelift can assume
- The Spacelift GitHub app installed on this repository

## Setup order

1. Create the stacks in the Spacelift UI using the definitions in stacks/
2. Attach the policies from policies/ to the relevant stacks
3. Configure the AWS integration on each stack with the appropriate IAM role
4. Trigger an initial run on the dev stack to validate connectivity