# module "ix-vm_instance" {
#   source          = "./vm-instance-module"
#   instance_name   = var.instance_name
#   instance_image  = var.instance_image
#   machine_type    = var.machine_type
#   compute_network = var.compute_network
# }

resource "google_cloudbuild_trigger" "manual-trigger" {
  name        = "Triggered"
  description = "Triggered via terraform"

  trigger_template {
    branch_name = "main"
    repo_name   = "https://github.com/sumits096/connector-gcp-test"
  }

  service_account = var.service_account_email
  filename        = "connector/workflow/cloudbuild.yaml"

  # source_to_build {
  #   uri       = "https://hashicorp/terraform-provider-google-beta"
  #   ref       = "refs/heads/main"
  #   repo_type = "GITHUB"
  # }

  # git_file_source {
  #   path      = "cloudbuild.yaml"
  #   uri       = "https://hashicorp/terraform-provider-google-beta"
  #   revision  = "refs/heads/main"
  #   repo_type = "GITHUB"
  # }

  # approval_config {
  #   approval_required = true
  # }

}

# resource "google_cloudbuild_trigger" "build_trigger" {
#   trigger_template {
#     branch_name = "main"
#     repo_name   = "https://github.com/sumits096/connector-gcp-test"
#   }

#   build {
#     images = ["gcr.io/$PROJECT_ID/$REPO_NAME:$SHORT_SHA"]
#     tags   = ["team-a", "service-b", "updated"]

#     step {
#       name = "gcr.io/cloud-builders/gsutil"
#       args = ["cp", "gs://mybucket/remotefile.zip", "localfile-updated.zip"]
#     }

#     step {
#       name = "gcr.io/cloud-builders/go"
#       args = ["build", "my_package_updated"]
#     }

#     step {
#       name = "gcr.io/cloud-builders/docker"
#       args = ["build", "-t", "gcr.io/$PROJECT_ID/$REPO_NAME:$SHORT_SHA", "-f", "Dockerfile", "."]
#     }
#     step {
#       name = "gcr.io/$PROJECT_ID/$REPO_NAME:$SHORT_SHA"
#       args = ["test"]
#     }
#   }
# }

