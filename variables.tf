variable "service_account_credentials" {
  description = "Service account email Id."
  type        = string
  default     = "23130737730-compute@developer.gserviceaccount.com"
}

variable "project_name" {
  description = "studied-client-346013"
  type        = string
  default     = "studied-client-346013"
}

variable "region" {
  description = "Service region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Service zone"
  type        = string
  default     = "us-central1-a"
}

variable "service_account_name" {
  description = "Service account."
  type        = string
  default     = "23130737730-compute"
}

variable "service_account_email" {
  description = "Service account email Id."
  type        = string
  default     = "23130737730-compute@developer.gserviceaccount.com"
}

variable "service_name" {
  description = "gcp-cloud-run-service."
  type        = string
  default     = "gcp-cloud-run-service"
}

variable "repository_name" {
  description = "terraform-module"
  type        = string
  default     = "terraform-module"
}

variable "branch_name" {
  description = "branch name"
  type        = string
  default     = "main"
}

variable "image_name" {
  description = "image name."
  type        = string
  default     = "connector"
}
