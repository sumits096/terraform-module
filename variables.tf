variable "service_account_credentials" {
  description = "Service account email Id."
  type        = string
  default     = ""
}

variable "project_name" {
  description = "studied-client-346013"
  type        = string
  default     = ""
}

variable "region" {
  description = "Service region"
  type        = string
  default     = ""
}

variable "zone" {
  description = "Service zone"
  type        = string
  default     = ""
}

variable "service_account_name" {
  description = "Service account."
  type        = string
  default     = ""
}

variable "service_account_email" {
  description = "Service account email Id."
  type        = string
  default     = ""
}

variable "service_name" {
  description = "gcp-cloud-run-service."
  type        = string
  default     = ""
}

#----------------------------------------------
# VM Instance variables
#----------------------------------------------
variable "instance_name" {
  type        = string
  description = "VM instance name"
  default     = ""
}

variable "machine_type" {
  type        = string
  description = "vm machine type"
  default     = ""
}

variable "compute_network" {
  type        = string
  description = "compute network"
  default     = ""
}

#----------------------------------------------
# CI/CD Build variables
#----------------------------------------------
variable "repository_name" {
  description = "terraform-module"
  type        = string
  default     = ""
}

variable "branch_name" {
  description = "branch name"
  type        = string
  default     = ""
}

variable "image_name" {
  description = "image name."
  type        = string
  default     = ""
}
