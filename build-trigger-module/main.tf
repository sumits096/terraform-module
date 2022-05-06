resource "google_cloudbuild_trigger" "terraform-trigger" {
  provider    = "google-beta"
  name        = "terraform-trigger"
  description = "Trigger build on changes from sanity"
  disabled    = false
  filename    = "connector/workflow/cloudbuild.yaml"

  github {
    owner = "sumits096"
    name  = "connector-gcp-test"
    push {
      branch = "^main$"
    }
  }
}
