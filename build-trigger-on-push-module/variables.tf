variable "google_provider" {
  description = "google provider"
  type        = string
  default     = "google-beta"
}

variable "build_trigger_name" {
  description = "build trigger name"
  type        = string
  default     = "terraform-trigger"
}

variable "build_trigger_description" {
  description = "build trigger description"
  type        = string
  default     = "Trigger build"
}

variable "build_trigger_status" {
  description = "build status"
  type        = bool
  default     = false
}

variable "build_trigger_filename" {
  description = "cloudbuild yaml file path"
  type        = string
  default     = "connector/workflow/cloudbuild.yaml"
}

variable "github_owner" {
  description = "github owner name"
  type        = string
  default     = "sumits096"
}

variable "github_repo_name" {
  description = "github repository name"
  type        = string
  default     = "connector-gcp-test"
}

variable "github_branch_name" {
  description = "github branch name"
  type        = string
  default     = "^main$"
}
