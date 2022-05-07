# module "ix-vm_instance" {
#   source          = "./vm-instance-module"
#   instance_name   = var.instance_name
#   instance_image  = var.instance_image
#   machine_type    = var.machine_type
#   compute_network = var.compute_network
# }

module "cicd_build_trigger_on_push" {
  source                      = "./build-trigger-on-push-module"
  service_account_credentials = var.service_account_credentials
  project_name                = var.project_name
  region                      = var.region
  zone                        = var.zone
  build_trigger_name          = var.build_trigger_push_name
  build_trigger_description   = var.build_trigger_push_description
  build_trigger_status        = var.build_trigger_push_status
  build_trigger_filename      = var.build_trigger_push_filename
  github_owner                = var.github_owner_push
  github_repo_name            = var.github_repo_name_push
  github_branch_name          = var.github_branch_name_push
}

module "cicd_build_trigger_on_pull" {
  source                      = "./build-trigger-on-pull-module"
  service_account_credentials = var.service_account_credentials
  project_name                = var.project_name
  region                      = var.region
  zone                        = var.zone
  build_trigger_name          = var.build_trigger_pull_name
  build_trigger_description   = var.build_trigger_pull_description
  build_trigger_status        = var.build_trigger_pull_status
  build_trigger_filename      = var.build_trigger_pull_filename
  github_owner                = var.github_owner_pull
  github_repo_name            = var.github_repo_name_pull
  github_branch_name          = var.github_branch_name_pull
}

# resource "google_cloudbuild_trigger" "terraform-trigger" {
#   provider    = "google-beta"
#   name        = var.build_trigger_name
#   description = var.build_trigger_description
#   disabled    = var.build_trigger_status
#   filename    = var.build_trigger_filename

#   github {
#     owner = var.github_owner
#     name  = var.github_repo_name
#     push {
#       branch = var.github_branch_name
#     }
#   }
# }





