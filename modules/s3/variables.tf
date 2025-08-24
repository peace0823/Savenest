variable "environment" {
  type        = string
  description = "Deployment environment (e.g., dev, staging, prod)"
  default     = "dev"
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket for the application"
  default     = "savenest-email-template"
}

variable "RESOURCES_PREFIX" {
  type        = string
  description = "Prefix to be used for resource naming"
}