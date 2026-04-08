# push-default.rego
# Trigger a tracked run when a push to main touches Terraform files.
# Attach to: platform-dev, platform-staging

package spacelift

# Allow a tracked (plan + apply) run if Terraform files changed on main.
track {
  input.push.branch == "main"
  terraform_files_changed
}

# Allow a proposed (plan only) run for any pull request.
propose {
  input.pull_request
}

# Ignore pushes that only touch non-Terraform files.
ignore {
  not terraform_files_changed
  not input.pull_request
}

terraform_files_changed {
  some file in input.push.affected_files
  endswith(file, ".tf")
}

terraform_files_changed {
  some file in input.push.affected_files
  endswith(file, ".tfvars")
}