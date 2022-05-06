variable "service_account_credentials" {}
variable "project_name" {}
variable "region" {}
variable "zone" {}
variable "service_account_name" {}
variable "service_account_email" {}
variable "service_name" {}

#----------------------------------------------
# VM Instance variables
#----------------------------------------------
variable "instance_name" {}
variable "instance_image" {}
variable "machine_type" {}
variable "compute_network" {}

#----------------------------------------------
# CI/CD Build variables
#----------------------------------------------
variable "repository_name" {}
variable "branch_name" {}
variable "image_name" {}


#----------------------------------------------
# CI/CD Build variables
#----------------------------------------------
variable "google_provider" {}
variable "build_trigger_name" {}
variable "build_trigger_description" {}
variable "build_trigger_status" {}
variable "build_trigger_filename" {}
variable "github_owner" {}
variable "github_repo_name" {}
variable "github_branch_name" {}
