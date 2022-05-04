resource "google_project_service" "build" {
  service            = "cloudbuild.googleapis.com"
  disable_on_destroy = false
}

resource "google_cloudbuild_trigger" "manual-trigger" {
  name        = "manual-build"
  description = "this is"

  build_source {
    uri       = "https://github.com/sumits096/connector-gcp-test.git"
    ref       = "refs/heads/main"
    repo_type = "GITHUB"
  }

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
      branch       = "^master$"
    }
  }

  approval_config {
    approval_required = false
  }
}
