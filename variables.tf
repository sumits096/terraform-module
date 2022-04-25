variable "service_account_credentials" {
  description = "Service account email Id."
}

variable "project_name" {
  description = "studied-client-346013"
}

variable "region" {
  description = "Service region"
}

variable "zone" {
  description = "Service zone"
}

variable "service_account_name" {
  description = "Service account."
}

variable "service_account_email" {
  description = "Service account email Id."
}

variable "service_name" {
  description = "gcp-cloud-run-service."
}

#----------------------------------------------
# VM Instance variables
#----------------------------------------------
variable "instance_name" {
  description = "VM instance name"
}

variable "machine_type" {
  description = "vm machine type"
}

variable "compute_network" {
  description = "compute network"
}

#----------------------------------------------
# CI/CD Build variables
#----------------------------------------------
variable "repository_name" {
  description = "terraform-module"
}

variable "branch_name" {
  description = "branch name"
}

variable "image_name" {
  description = "image name."
}
