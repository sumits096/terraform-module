variable "service_account_credentials" {
  description = "Service account email Id."
  type        = string
  default     = " "
}

variable "project_name" {
  description = "studied-client-346013"
  type        = string
  default     = " "
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
  default     = " "
}

variable "service_name" {
  description = "gcp-cloud-run-service."
  type        = string
  default     = "gcp-cloud-run-service"
}

#----------------------------------------------
# VM Instance variables
#----------------------------------------------
variable "instance_name" {
  type        = string
  description = "VM instance name"
  default     = "ix-vm-machine"
}

variable "machine_type" {
  type        = string
  description = "vm machine type"
  default     = "f1-micro"
}

variable "compute_network" {
  type        = string
  description = "compute network"
  default     = "iv-vm-network"
}

#----------------------------------------------
# CI/CD Build variables
#----------------------------------------------
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
