service_account_credentials = ""
project_name                = "studied-client-346013"
region                      = "global"
zone                        = "us-central1-a"
service_account_name        = "23130737730-compute"
service_account_email       = "23130737730-compute@developer.gserviceaccount.com"
service_name                = "gcp-cloud-run-service"
instance_name               = "ix-vm-machine"
instance_image              = "debian-cloud/debian-9"
machine_type                = "f1-micro"
compute_network             = "ix-vm-network"
repository_name             = "terraform-module"
branch_name                 = "main"
image_name                  = "connector"


#----------------------------------------------
# CI/CD Build variables
#----------------------------------------------
build_trigger_push_name        = "terraform-trigger"
build_trigger_push_description = "Deploy connector application on cloud run"
build_trigger_push_status      = false
build_trigger_push_filename    = "connector/workflow/cloudbuild-prod.yaml"
github_owner_push              = "sumits096"
github_repo_name_push          = "connector-gcp-test"
github_branch_name_push        = "^main$"


#----------------------------------------------
# CI/CD Build variables
#----------------------------------------------
build_trigger_pull_name        = "version control"
build_trigger_pull_description = "Update version number on pull request"
build_trigger_pull_status      = false
build_trigger_pull_filename    = "connector/workflow/cloudbuild-version.yaml"
github_owner_pull              = "sumits096"
github_repo_name_pull          = "connector-gcp-test"
github_branch_name_pull        = "^main$"
