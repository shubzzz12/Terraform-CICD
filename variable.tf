variable "bucket_name" {
  type        = string
  description = "Enter your unique bucket name"
}

variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "AWS region to create resources in"
}