variable "aws_region" {
  description = "AWS region for platform resources"
  type        = string
  default     = "us-east-1"
}

variable "platform_name" {
  description = "Logical name of the platform"
  type        = string
  default     = "platform-playbook"
}

variable "environment" {
  description = "Environment name such as dev, stage, or prod"
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
  description = "Tool managing the infrastructure"
  type        = string
  default     = "terraform"
}

variable "extra_tags" {
  description = "Additional tags to merge with common tags"
  type        = map(string)
  default     = {}
}