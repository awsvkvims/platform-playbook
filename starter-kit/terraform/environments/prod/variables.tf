variable "aws_region" {
  description = "AWS region for environment resources"
  type        = string
  default     = "us-east-1"
}

variable "platform_name" {
  description = "Logical platform name"
  type        = string
  default     = "platform-playbook"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "prod"
}

variable "account_id" {
  description = "AWS account ID"
  type        = string
}

variable "owner" {
  description = "Owning team or function"
  type        = string
  default     = "platform-engineering"
}

variable "cost_center" {
  description = "Cost center tag value"
  type        = string
  default     = "shared-services"
}

variable "managed_by" {
  description = "Management tool tag"
  type        = string
  default     = "terraform"
}

variable "extra_tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}