# module "ix-vm_instance" {
#   source          = "./vm-instance-module"
#   instance_name   = var.instance_name
#   instance_image  = var.instance_image
#   machine_type    = var.machine_type
#   compute_network = var.compute_network
# }

module "cicd_build_trigger" {
  source                    = "./build-trigger-module"
  google_provider           = var.google_provider
  build_trigger_name        = var.build_trigger_name
  build_trigger_description = var.build_trigger_description
  build_trigger_status      = var.build_trigger_status
  build_trigger_filename    = var.build_trigger_filename
  github_owner              = var.github_owner
  github_repo_name          = var.github_repo_name
  github_branch_name        = var.github_branch_name
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





