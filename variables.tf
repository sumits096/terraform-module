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
variable "build_trigger_push_name" {}
variable "build_trigger_push_description" {}
variable "build_trigger_push_status" {}
variable "build_trigger_push_filename" {}
variable "github_owner_push" {}
variable "github_repo_name_push" {}
variable "github_branch_name_push" {}

#----------------------------------------------
# CI/CD Build on pull variables
#----------------------------------------------
variable "build_trigger_pull_name" {}
variable "build_trigger_pull_description" {}
variable "build_trigger_pull_status" {}
variable "build_trigger_pull_filename" {}
variable "github_owner_pull" {}
variable "github_repo_name_pull" {}
variable "github_branch_name_pull" {}
