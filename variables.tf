variable "region" {
  description = "Name of AWS region"
  default     = "us-east-1"
}

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

