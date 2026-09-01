variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "us-west1"
}

variable "bucket_name" {
  description = "Google Cloud Storage bucket name"
  type        = string
}

variable "bucket_location" {
  description = "Google Cloud Storage bucket location"
  type        = string
  default     = "US"
}
