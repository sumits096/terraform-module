terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = var.service_account_credentials
  project     = var.project_name
  region      = var.region
  zone        = var.zone
}

provider "google-beta" {
  credentials = var.service_account_credentials
  project     = var.project_name
  region      = var.region
  zone        = var.zone
}
