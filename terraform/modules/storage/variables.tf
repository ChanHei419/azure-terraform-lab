variable "project_name" {
  description = "Short name used as a prefix for resources."
  type        = string
}

variable "environment" {
  description = "Environment name (dev, test, prod)."
  type        = string
}

variable "location" {
  description = "Azure region for the storage account."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group that will contain the storage account."
  type        = string
}

variable "tags" {
  description = "Tags applied to resources."
  type        = map(string)
  default     = {}
}
