output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.savenest.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.savenest.arn
}

output "bucket_regional_domain_name" {
  description = "The regional domain name of the S3 bucket"
  value       = aws_s3_bucket.savenest.bucket_regional_domain_name
}