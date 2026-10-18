output "bucket_name" {
  value       = "aws_s3_bucket.cicd_bucket.bucket"
  description = "Name of the S3 bucket created"
  depends_on  = []
}