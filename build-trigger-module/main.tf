resource "google_cloudbuild_trigger" "manual-trigger" {
  name            = "manual-build"
  description     = "this is"
  service_account = var.service_account_credentials
  project         = var.project_name
  region          = var.regions
  zone            = var.zone

  source_to_build {
    uri       = "https://github.com/sumits096/connector-gcp-test.git"
    ref       = "refs/heads/main"
    repo_type = "GITHUB"
  }

  git_file_source {
    path      = "cloudbuild.yaml"
    uri       = "https://github.com/sumits096/connector-gcp-test.git"
    revision  = "refs/heads/main"
    repo_type = "GITHUB"
  }

  github {
    owner = "sumits096"
    name  = "sumits096"
    push {
      invert_regex = true
      branch       = "master"
    }
  }

  approval_config {
    approval_required = false
  }
}
