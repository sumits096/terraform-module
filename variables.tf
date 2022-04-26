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
