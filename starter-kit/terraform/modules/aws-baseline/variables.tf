variable "platform_name" {
  description = "Logical platform name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "account_id" {
  description = "AWS account ID used in globally unique names"
  type        = string
  validation {
    condition     = can(regex("^[0-9]{12}$", var.account_id))
    error_message = "account_id must be a 12-digit AWS account ID."
  }
}

variable "common_tags" {
  description = "Common tags applied to resources"
  type        = map(string)
}