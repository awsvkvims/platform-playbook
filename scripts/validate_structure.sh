#!/usr/bin/env bash

set -euo pipefail

required_paths=(
  "docs"
  "starter-kit"
  "starter-kit/architecture"
  "starter-kit/backstage"
  "starter-kit/backstage/catalog"
  "starter-kit/backstage/templates"
  "starter-kit/terraform"
  "starter-kit/terraform/modules"
  "starter-kit/terraform/environments"
  "starter-kit/spacelift"
  "starter-kit/spacelift/stacks"
  "starter-kit/spacelift/policies"
  "starter-kit/github-actions"
  "starter-kit/github-actions/workflows"
  "starter-kit/policies"
  "starter-kit/observability"
  "starter-kit/observability/slo"
  "starter-kit/observability/dashboards"
  "starter-kit/observability/alerts"
  "starter-kit/examples"
  "starter-kit/examples/sample-service"
  "starter-kit/launchdarkly"
  "starter-kit/launchdarkly/terraform"
  "starter-kit/launchdarkly/github-actions"
  "starter-kit/launchdarkly/samples"
  "starter-kit/launchdarkly/samples/node-service"
  "templates"
  "diagrams"
)

missing=0

for path in "${required_paths[@]}"; do
  if [ ! -e "$path" ]; then
    echo "Missing required path: $path"
    missing=1
  fi
done

if [ "$missing" -ne 0 ]; then
  echo "Repository structure validation failed."
  exit 1
fi

echo "Repository structure validation passed."
