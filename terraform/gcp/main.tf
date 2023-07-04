terraform {
  cloud {
    organization = "cyberworld-builders"

    workspaces {
      name = "todo-test"
    }
    required_providers {
        google = {
        source  = "hashicorp/google"
        version = ">= 4.45.0"
        }
    }
  }
}

provider "google" {
  credentials = var.GCP_CREDENTIALS
}

locals {
  // Generate a unique string for the bucket name.
  // It's possible that this is unnecessary because of the `bucket_prefix` attribute, 
  // but I'm keeping it in case I need to be able to predict the bucket name somewhere else.
  unique_string = substr(replace(sha1("terraform-test"), "/[^a-z0-9]/", ""), 0, 8) 
}

# storage bucket
resource "google_storage_bucket" "terraform_state" {
    name = "terraform-test-${local.unique_string}"
  location = "US"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}