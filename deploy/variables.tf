variable "region" {
  default = "us-east-1"
}

variable "namespace" {
  description = "namespace, which could be your organiation name, e.g. amazon."
  default     = "myorg"
}

variable "environment" {
  type        = string
  default     = "preprod"
  description = "Environment area, e.g. prod or preprod."
}

variable "name" {
  description = "deployment name"
  default     = "codestar"
}

variable "delimiter" {
  description = "delimiter, which could be used between name, namespace and env."
  default     = "-"
}

variable "attributes" {
  default     = []
  description = "atttributes, which could be used for additional attributes."
}

variable "account" {
  description = "account, which could be AWS Account Name or Number."
  default     = "myaccount"
}

variable "project_name" {
  description = "stack name"
  default     = "myproj"
}

variable "tags" {
  default     = {}
  description = "tags, which could be used for additional tags."
}

## CodeStar Variables
variable "host_connection_name" {
  description = "Name of host to be created, it must be unique in calling AWS account.."
  type        = string
  default     = null
}

variable "provider_endpoint" {
  description = "Endpoint of the infrastructure to be represented by the host after it is created."
  type        = string
  default     = null
}

variable "provider_type" {
  description = "Name of the external provider where your third-party code repository is configured."
  type        = string
  default     = null
}

variable "codestar_connection_name" {
  description = "Name of host to be created, it must be unique in calling AWS account.."
  type        = string
  default     = null
}

variable "codestar_provider_type" {
  description = "Name of the external provider where your third-party code repository is configured."
  type        = string
  default     = null

}