# module "ix-vm_instance" {
#   source          = "./vm-instance-module"
#   instance_name   = var.instance_name
#   instance_image  = var.instance_image
#   machine_type    = var.machine_type
#   compute_network = var.compute_network
# }

resource "google_cloudbuild_trigger" "manual-trigger" {
  name        = "manual-build"
  description = "this is test"

  trigger_template {
    branch_name = "main-updated"
    repo_name   = "some-repo-updated"
  }

  source_to_build {
    uri       = "https://hashicorp/terraform-provider-google-beta"
    ref       = "refs/heads/main"
    repo_type = "GITHUB"
  }

  git_file_source {
    path      = "cloudbuild.yaml"
    uri       = "https://hashicorp/terraform-provider-google-beta"
    revision  = "refs/heads/main"
    repo_type = "GITHUB"
  }

  approval_config {
    approval_required = true
  }

}

