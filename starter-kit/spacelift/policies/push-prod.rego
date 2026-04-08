# push-prod.rego
# Only trigger prod runs from release tags. Block all branch pushes.
# Attach to: platform-prod

package spacelift

# Allow a tracked run only when triggered by a release tag.
track {
  startswith(input.push.tag, "release/")
  terraform_files_changed
}

# Allow proposed runs for pull requests so engineers can see a plan.
propose {
  input.pull_request
}

# Block all direct branch pushes to prod -- even main.
ignore {
  input.push.branch
  not input.push.tag
}

terraform_files_changed {
  some file in input.push.affected_files
  endswith(file, ".tf")
}