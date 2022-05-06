resource "google_cloudbuild_trigger" "pull_request_merge" {
  project     = "cloud-build-3660853213"
  name        = "pull-request-merge"
  description = <<EOF
  Trigger  for Cloud Build when a pull request is merged into master.
  EOF

  github {
    name  = "examples"
    owner = "parabolic"

    push {
      branch = "^master$"
    }
  }

  included_files = ["terraform/iac-pipelines-with-terraform-and-cloud-build/**/*.tf"]

  filename   = "terraform/iac-pipelines-with-terraform-and-cloud-build/cloudbuild_pull_request_merge.yaml"
  depends_on = [google_project_service.apis]
}
