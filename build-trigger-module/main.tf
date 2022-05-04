resource "google_cloudbuild_trigger" "manual-trigger" {
  name = "manual-build"

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

  approval_config {
    approval_required = true
  }
}
