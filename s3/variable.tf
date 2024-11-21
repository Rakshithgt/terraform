variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "ACL of the S3 bucket"
  type        = string
  default     = "private"
}

variable "versioning_status" {
  description = "Versioning status of the S3 bucket"
  type        = string
  default     = "Enabled"
}





