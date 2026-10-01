variable "project_name" {
  description = "Short name used as a prefix for every resource."
  type        = string
  default     = "lab"

  validation {
    condition     = can(regex("^[a-z0-9-]{2,12}$", var.project_name))
    error_message = "project_name must be 2-12 characters: lowercase letters, numbers, and dashes only."
  }
}

variable "environment" {
  description = "Environment name (dev, test, prod)."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "environment must be one of: dev, test, prod."
  }
}

variable "location" {
  description = "Azure region for all resources."
  type        = string
  default     = "eastasia"
}

variable "tags" {
  description = "Tags applied to every resource."
  type        = map(string)
  default     = {
    owner     = "HeiChan"
    managedBy = "Terraform"
  }
}
