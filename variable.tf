variable "versioning_status" {
  description = "Versioning status of the S3 bucket"
  type        = string
  default     = "Enabled"  # Optional default value
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "ACL of the S3 bucket"
  type        = string
  default     = "private"
}

variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "hash_key" {
  description = "Hash key for the DynamoDB table"
  type        = string
}
