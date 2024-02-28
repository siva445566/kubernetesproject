terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.15.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "nextbowl"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "./nextbowl.json"
}



resource "google_storage_bucket" "bucket" {
  name          = var.google_storage_bucket
  location      = var.location
  force_destroy = true

  uniform_bucket_level_access = true
}