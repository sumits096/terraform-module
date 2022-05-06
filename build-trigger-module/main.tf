# resource "google_cloudbuild_trigger" "pull_request_merge" {
#   project     = "cloud-build-3660853213"
#   name        = "pull-request-merge"
#   description = <<EOF
#   Trigger  for Cloud Build when a pull request is merged into master.
#   EOF

#   github {
#     name  = "examples"
#     owner = "parabolic"

#     push {
#       branch = "^master$"
#     }
#   }

#   included_files = ["terraform/iac-pipelines-with-terraform-and-cloud-build/**/*.tf"]

#   filename   = "terraform/iac-pipelines-with-terraform-and-cloud-build/cloudbuild_pull_request_merge.yaml"
#   depends_on = [google_project_service.apis]
# }

resource "google_cloudbuild_trigger" "build_trigger" {
  trigger_template {
    branch_name = "main"
    repo_name   = "https://github.com/sumits096/connector-gcp-test"
  }

  build {
    images = ["gcr.io/$PROJECT_ID/$REPO_NAME:$SHORT_SHA"]
    tags   = ["team-a", "service-b", "updated"]

    step {
      name = "gcr.io/cloud-builders/gsutil"
      args = ["cp", "gs://mybucket/remotefile.zip", "localfile-updated.zip"]
    }

    step {
      name = "gcr.io/cloud-builders/go"
      args = ["build", "my_package_updated"]
    }

    step {
      name = "gcr.io/cloud-builders/docker"
      args = ["build", "-t", "gcr.io/$PROJECT_ID/$REPO_NAME:$SHORT_SHA", "-f", "Dockerfile", "."]
    }
    step {
      name = "gcr.io/$PROJECT_ID/$REPO_NAME:$SHORT_SHA"
      args = ["test"]
    }
  }
}
