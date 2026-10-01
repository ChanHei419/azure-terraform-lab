variable "project_name" {
  description = "Short name used as a prefix for resources."
  type        = string
}

variable "environment" {
  description = "Environment name (dev, test, prod)."
  type        = string
}

variable "location" {
  description = "Azure region for the resource group."
  type        = string
}

variable "tags" {
  description = "Tags applied to the resource group."
  type        = map(string)
  default     = {}
}
