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
