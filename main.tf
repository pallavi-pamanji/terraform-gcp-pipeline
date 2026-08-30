terraform {
  backend "gcs" {
    bucket = "terraform-state-qwiklabs-gcp-04-3e7d56fa617d"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "my_bucket" {
  name     = var.bucket_name
  location = var.bucket_location

  labels = {
    environment = "learning"
    managed_by  = "terraform"
  }
}
