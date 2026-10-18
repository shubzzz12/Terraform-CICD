resource "aws_s3_bucket" "cicd_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "cicd-project"
    Environment = "lab"
    ManagedBy   = "Terraform"
  }
}
