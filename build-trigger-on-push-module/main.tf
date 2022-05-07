resource "google_cloudbuild_trigger" "terraform-trigger" {
  provider    = google-beta
  name        = var.build_trigger_name
  description = var.build_trigger_description
  disabled    = var.build_trigger_status
  filename    = var.build_trigger_filename

  github {
    owner = var.github_owner
    name  = var.github_repo_name
    push {
      branch = var.github_branch_name
    }
  }
}
