module "s3" {
  source = "./modules/s3"

  bucket_name       = var.bucket_name
  acl               = var.acl
  versioning_status = var.versioning_status  # Pass the variable here
}




module "dynamodb" {
  source     = "./modules/dynamodb"  # Path to the dynamodb module
  table_name = var.table_name
  hash_key   = var.hash_key
}


output "s3_bucket_name" {
  description = "Name of the S3 bucket"
  value       = module.s3.bucket_name
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = module.s3.bucket_arn
}

output "dynamodb_table_arn" {
  description = "The ARN of the DynamoDB table"
  value       = module.dynamodb.table_arn
}
