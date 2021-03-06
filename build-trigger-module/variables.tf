variable "project_name" {
  description = "The project ID where all resources will be launched."
  type        = string
  default     = "studied-client-346013"
}

variable "region" {
  description = "The location region to deploy the Cloud Run services. Note: Be sure to pick a region that supports Cloud Run."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The location zone to deploy the Cloud Run services. Note: Be sure to pick a region that supports Cloud Run."
  type        = string
  default     = "us-central1-a"
}

variable "service_account_email" {
  description = "Service account email Id."
  type        = string
  default     = "23130737730-compute@developer.gserviceaccount.com"
}

variable "service_name" {
  description = "The name of the Cloud Run service to deploy."
  type        = string
  default     = "terraform-demo"
}

variable "repository_name" {
  description = "Name of the Google Cloud Source Repository to create."
  type        = string
  default     = "terraform-module"
}

variable "branch_name" {
  description = "Example branch name used to trigger builds"
  default     = "main"
}

variable "image_name" {
  description = "The name of the image to deploy. Defaults to a publically available image."
  type        = string
  default     = "connector"
}
